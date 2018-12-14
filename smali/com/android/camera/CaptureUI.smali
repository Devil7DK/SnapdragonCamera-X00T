.class public Lcom/android/camera/CaptureUI;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
.implements Lcom/android/camera/FocusOverlayManager$FocusUI;
.implements Lcom/android/camera/PauseButton$OnPauseButtonListener;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/SettingsManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CaptureUI$DecodeImageForReview;,
        Lcom/android/camera/CaptureUI$DecodeTask;,
        Lcom/android/camera/CaptureUI$ZoomChangeListener;,
        Lcom/android/camera/CaptureUI$MonoDummyListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final AUTOMATIC_MODE:I = 0x0

.field private static final CLICK_THRESHOLD:I = 0xc8

.field private static final FILTER_MENU_IN_ANIMATION:I = 0x1

.field private static final FILTER_MENU_NONE:I = 0x0

.field private static final FILTER_MENU_ON:I = 0x2

.field private static final HIGHLIGHT_COLOR:I = -0xcc4a1b

.field private static final TAG:Ljava/lang/String; = "SnapCam_CaptureUI"


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private callbackMono:Landroid/view/SurfaceHolder$Callback;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBokehSeekBar:Landroid/widget/SeekBar;

.field private mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

.field private mBokehTipText:Landroid/widget/TextView;

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

.field private mCancelButton:Landroid/widget/ImageView;

.field private mCountDownView:Lcom/android/camera/ui/CountDownView;

.field private mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDownSampleFactor:I

.field private mExitBestMode:Landroid/widget/ImageView;

.field private mFaceView:Lcom/android/camera/ui/Camera2FaceView;

.field private mFilterLayout:Landroid/view/ViewGroup;

.field private mFilterMenuStatus:I

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mIsMonoDummyAllocationEverUsed:Z

.field private mIsSceneModeLabelClose:Z

.field private mIsVideoUI:Z

.field private mMakeupButton:Landroid/widget/ImageView;

.field private mMakeupSeekBar:Landroid/widget/SeekBar;

.field private mMakeupSeekBarLayout:Landroid/view/View;

.field private mMenuHelp:Lcom/android/camera/ui/MenuHelp;

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mMonoDummyAllocation:Landroid/renderscript/Allocation;

.field private mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

.field private mMuteButton:Lcom/android/camera/ui/RotateImageView;

.field private mOrientation:I

.field private mPauseButton:Lcom/android/camera/PauseButton;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPreviewCover:Landroid/view/View;

.field mPreviewHeight:I

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field mPreviewWidth:I

.field private mProModeCloseButton:Landroid/view/View;

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Landroid/view/View;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

.field private mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

.field private mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

.field private mSceneModeLabelView:Landroid/widget/LinearLayout;

.field private mSceneModeName:Landroid/widget/TextView;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mScreenBrightness:F

.field private mScreenRatio:I

.field private mSeekbarBody:Landroid/view/View;

.field private mSeekbarToggleButton:Landroid/widget/ImageView;

.field private mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderMono:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

.field private mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTimeLapseLabel:Landroid/view/View;

.field private mTopMargin:I

.field private mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

.field private mUIhidden:Z

.field private mVideoButton:Landroid/widget/ImageView;

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V
    .locals 12
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "module"    # Lcom/android/camera/CaptureModule;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const v5, 0x7f0d001c

    const/16 v11, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v3, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    .line 121
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    .line 125
    new-instance v0, Lcom/android/camera/CaptureUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureUI$1;-><init>(Lcom/android/camera/CaptureUI;)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    .line 142
    new-instance v0, Lcom/android/camera/CaptureUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureUI$2;-><init>(Lcom/android/camera/CaptureUI;)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 179
    iput-boolean v3, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    .line 181
    iput v3, p0, Lcom/android/camera/CaptureUI;->mScreenRatio:I

    .line 182
    iput v3, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    .line 183
    iput v3, p0, Lcom/android/camera/CaptureUI;->mBottomMargin:I

    .line 208
    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 217
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CaptureUI;->mDownSampleFactor:I

    .line 218
    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    .line 222
    iput-boolean v3, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 223
    iput-boolean v3, p0, Lcom/android/camera/CaptureUI;->mIsSceneModeLabelClose:Z

    .line 255
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 256
    iput-object p2, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    .line 257
    iput-object p3, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    .line 258
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 259
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/SettingsManager;->registerListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040006

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 265
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 266
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    new-instance v1, Lcom/android/camera/CaptureUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$3;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 281
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/AutoFitSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    .line 283
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 286
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 287
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    .line 288
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    .line 289
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    .line 293
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSeekbarBody:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    .line 296
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$4;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    .line 309
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/camera/CaptureUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$5;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$6;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/CaptureUI$6;-><init>(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->setMakeupButtonIcon()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashToggleButton;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    .line 335
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mProModeCloseButton:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mProModeCloseButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/CaptureUI$7;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$7;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    .line 343
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/camera/CaptureUI$8;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/CaptureUI$8;-><init>(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    .line 363
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    .line 364
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFilterModeButton()V

    .line 365
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initSceneModeButton()V

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initSwitchCamera()V

    .line 367
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFlashButton()V

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 370
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 372
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mTimeLapseLabel:Landroid/view/View;

    .line 373
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PauseButton;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    .line 374
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/PauseButton;->setOnPauseButtonListener(Lcom/android/camera/PauseButton$OnPauseButtonListener;)V

    .line 376
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    .line 377
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isAudioMute()Z

    move-result v0

    if-nez v0, :cond_6

    .line 379
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$9;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$9;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$10;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$10;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/RotateImageView;

    .line 404
    .local v9, "muteButton":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v9, v11}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    .line 407
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    .line 408
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    .line 409
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$11;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$11;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/OneUICameraControls;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    .line 418
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Camera2FaceView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    .line 420
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mCancelButton:Landroid/widget/ImageView;

    .line 421
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v7

    .line 422
    .local v7, "intentMode":I
    if-eqz v7, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/OneUICameraControls;->setIntentMode(I)V

    .line 424
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/OneUICameraControls;->setVideoMode(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewCancelButton:Landroid/view/View;

    .line 427
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    .line 428
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewPlayButton:Landroid/view/View;

    .line 430
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    .line 431
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewImage:Landroid/widget/ImageView;

    .line 432
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/CaptureUI$12;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$12;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/CaptureUI$13;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$13;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/CaptureUI$14;

    invoke-direct {v1, p0, v7}, Lcom/android/camera/CaptureUI$14;-><init>(Lcom/android/camera/CaptureUI;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewPlayButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/CaptureUI$15;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$15;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCancelButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$16;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$16;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureUI;->mScreenRatio:I

    .line 472
    iget v0, p0, Lcom/android/camera/CaptureUI;->mScreenRatio:I

    if-ne v0, v4, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 474
    .local v8, "l":I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 475
    .local v10, "tm":I
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 476
    .local v6, "bm":I
    div-int/lit8 v0, v8, 0x4

    mul-int/2addr v0, v10

    add-int v1, v10, v6

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    .line 477
    div-int/lit8 v0, v8, 0x4

    iget v1, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureUI;->mBottomMargin:I

    .line 480
    .end local v6    # "bm":I
    .end local v8    # "l":I
    .end local v10    # "tm":I
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 482
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_3

    .line 486
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 487
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    if-nez v0, :cond_4

    .line 491
    new-instance v0, Lcom/android/camera/ui/TrackingFocusRenderer;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/camera/ui/TrackingFocusRenderer;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureUI;)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    .line 492
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 495
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 500
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_5

    .line 502
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 503
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setGestures(Lcom/android/camera/PreviewGestures;)V

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 507
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 509
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 510
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v11}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showFirstTimeHelp()V

    .line 512
    return-void

    .line 381
    .end local v7    # "intentMode":I
    .end local v9    # "muteButton":Lcom/android/camera/ui/RotateImageView;
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 473
    .restart local v7    # "intentMode":I
    .restart local v9    # "muteButton":Lcom/android/camera/ui/RotateImageView;
    :cond_7
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 497
    :cond_8
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/camera/CaptureUI;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CaptureUI;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->toggleMakeup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/CaptureUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/CaptureUI;->mIsSceneModeLabelClose:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/CaptureUI;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CaptureUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CaptureUI;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/CaptureUI;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/CaptureUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/camera/CaptureUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/MenuHelp;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/CaptureUI;Lcom/android/camera/ui/MenuHelp;)Lcom/android/camera/ui/MenuHelp;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Lcom/android/camera/ui/MenuHelp;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/CaptureUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/CaptureUI;->mDownSampleFactor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->previewUIReady()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureUI$DecodeImageForReview;)Lcom/android/camera/CaptureUI$DecodeImageForReview;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Lcom/android/camera/CaptureUI$DecodeImageForReview;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/TrackingFocusRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->previewUIDestroyed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/Camera2FaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CaptureUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSeekbarBody:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x1

    .line 1071
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    if-ne v1, v2, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iput v2, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1077
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1082
    :goto_1
    new-instance v1, Lcom/android/camera/CaptureUI$25;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$25;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1102
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1080
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private enableView(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v3}, Lcom/android/camera/SettingsManager;->getValuesMap()Ljava/util/Map;

    move-result-object v1

    .line 782
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SettingsManager$Values;

    .line 783
    .local v2, "values":Lcom/android/camera/SettingsManager$Values;
    if-eqz v2, :cond_0

    .line 784
    iget-object v3, v2, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 785
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    .line 784
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentIntentMode()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    return v0
.end method

.method private getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    .line 1430
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    goto :goto_0
.end method

.method private getScreenWidth()I
    .locals 3

    .prologue
    .line 895
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 896
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 897
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private handleBackKeyOnMenu()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1275
    iget v1, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1276
    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 1279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeCountDown()V
    .locals 4

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040007

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1369
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    .line 1370
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V

    .line 1371
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->bringToFront()V

    .line 1372
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget v1, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1373
    return-void
.end method

.method private needShowInstructional()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 816
    const/4 v2, 0x1

    .line 817
    .local v2, "needShow":Z
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 818
    invoke-static {v7}, Lcom/android/camera/ComboPreferences;->getGlobalSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 817
    invoke-virtual {v6, v7, v4}, Lcom/android/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 819
    .local v3, "pref":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v7, "pref_camera2_scenemode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v0

    .line 820
    .local v0, "index":I
    if-ge v0, v5, :cond_0

    .line 821
    const/4 v2, 0x0

    .line 827
    :goto_0
    return v2

    .line 823
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pref_camera2_scenemode_key_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "instructionalKey":Ljava/lang/String;
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1
.end method

.method private previewUIDestroyed()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onPreviewUIDestroyed()V

    .line 244
    return-void
.end method

.method private previewUIReady()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onPreviewUIReady()V

    .line 228
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    .line 234
    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private rotationSceneModeInstructionalDialog(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    .line 901
    neg-int v6, p2

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    .line 902
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getScreenWidth()I

    move-result v5

    .line 903
    .local v5, "screenWidth":I
    mul-int/lit8 v6, v5, 0x9

    div-int/lit8 v0, v6, 0xa

    .line 904
    .local v0, "dialogSize":I
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 905
    .local v1, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 906
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/view/Window;->setGravity(I)V

    .line 907
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 908
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 909
    const v6, 0x7f0d00d0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 910
    .local v2, "layout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 911
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    return-void
.end method

.method private setMakeupButtonIcon()V
    .locals 3

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_makeup_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureUI$17;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CaptureUI$17;-><init>(Lcom/android/camera/CaptureUI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method private setScreenBrightness(F)F
    .locals 4
    .param p1, "brightness"    # F

    .prologue
    .line 1739
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1740
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1741
    .local v0, "layout":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1742
    .local v1, "originalBrightness":F
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1743
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1744
    return v1
.end method

.method private showFirstTimeHelp(II)V
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MenuHelp;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    .line 1599
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setForCamera2(Z)V

    .line 1600
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setMargins(II)V

    .line 1602
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    new-instance v1, Lcom/android/camera/CaptureUI$28;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$28;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1611
    return-void
.end method

.method private showSceneInstructionalDialog(I)V
    .locals 18
    .param p1, "orientation"    # I

    .prologue
    .line 832
    const v8, 0x7f040033

    .line 833
    .local v8, "layoutId":I
    const/16 v15, 0x5a

    move/from16 v0, p1

    if-eq v0, v15, :cond_0

    const/16 v15, 0x10e

    move/from16 v0, p1

    if-ne v0, v15, :cond_1

    .line 834
    :cond_0
    const v8, 0x7f040034

    .line 836
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v16, "layout_inflater"

    .line 837
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 838
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x0

    invoke-virtual {v5, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 840
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v16, "pref_camera2_scenemode_key"

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v4

    .line 841
    .local v4, "index":I
    const v15, 0x7f0d00d2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 842
    .local v9, "name":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v16, "pref_camera2_scenemode_key"

    .line 843
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 844
    .local v13, "sceneModeNameArray":[Ljava/lang/CharSequence;
    aget-object v15, v13, v4

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    const v15, 0x7f0d00d1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 847
    .local v3, "icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v16, "pref_camera2_scenemode_instructional"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/SettingsManager;->getResource(Ljava/lang/String;I)[I

    move-result-object v12

    .line 849
    .local v12, "resId":[I
    aget v15, v12, v4

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 851
    const v15, 0x7f0d00d3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 852
    .local v6, "instructional":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v16, "pref_camera2_scenemode_instructional"

    .line 853
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 854
    .local v7, "instructionalArray":[Ljava/lang/CharSequence;
    aget-object v15, v7, v4

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 892
    :cond_2
    :goto_0
    return-void

    .line 858
    :cond_3
    aget-object v15, v7, v4

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    const v15, 0x7f0d00d4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 861
    .local v11, "remember":Landroid/widget/CheckBox;
    const v15, 0x7f0d00d6

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 862
    .local v10, "ok":Landroid/widget/Button;
    new-instance v15, Lcom/android/camera/CaptureUI$23;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v4}, Lcom/android/camera/CaptureUI$23;-><init>(Lcom/android/camera/CaptureUI;Landroid/widget/CheckBox;I)V

    invoke-virtual {v10, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 882
    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 884
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    if-eqz p1, :cond_2

    .line 890
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/camera/CaptureUI;->rotationSceneModeInstructionalDialog(Landroid/view/View;I)V

    goto :goto_0

    .line 885
    :catch_0
    move-exception v2

    .line 886
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showSceneModeLabel()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 915
    iput-boolean v4, p0, Lcom/android/camera/CaptureUI;->mIsSceneModeLabelClose:Z

    .line 916
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v0

    .line 917
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 918
    .local v1, "sceneModeNameArray":[Ljava/lang/CharSequence;
    if-lez v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 921
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 924
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleMakeup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 545
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_makeup_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    if-nez v1, :cond_0

    .line 547
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_makeup_key"

    const-string v3, "50"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 549
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 550
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSeekbarBody:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    const v2, 0x7f020171

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->setMakeupButtonIcon()V

    .line 559
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureModule;->restartSession(Z)V

    .line 561
    :cond_0
    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_makeup_key"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 555
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 556
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addFilterMode()V
    .locals 29

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v26, v0

    const-string v27, "pref_camera2_coloreffect_key"

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 966
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v20

    .line 967
    .local v20, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v16

    .line 968
    .local v16, "mIsDefaultToPortrait":Z
    if-nez v16, :cond_1

    .line 969
    add-int/lit8 v26, v20, 0x5a

    move/from16 v0, v26

    rem-int/lit16 v0, v0, 0x168

    move/from16 v20, v0

    .line 971
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v26, v0

    const-string v27, "window"

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/WindowManager;

    .line 972
    .local v25, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v25 .. v25}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 973
    .local v3, "display":Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v26, v0

    const-string v27, "pref_camera2_coloreffect_key"

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 975
    .local v4, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 976
    .local v19, "r":Landroid/content/res/Resources;
    const v26, 0x7f0c0086

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    const v28, 0x7f0c0088

    .line 977
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    const/high16 v27, 0x3f800000    # 1.0f

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v9, v0

    .line 978
    .local v9, "height":I
    const v26, 0x7f0c0087

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    const v28, 0x7f0c0088

    .line 979
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    const/high16 v27, 0x3f800000    # 1.0f

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 982
    .local v24, "width":I
    if-eqz v20, :cond_2

    const/16 v26, 0xb4

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    :cond_2
    const/16 v18, 0x1

    .line 983
    .local v18, "portrait":Z
    :goto_1
    move/from16 v21, v9

    .line 984
    .local v21, "size":I
    if-nez v18, :cond_5

    .line 985
    const v8, 0x7f040045

    .line 986
    .local v8, "gridRes":I
    move/from16 v21, v24

    .line 991
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v26, v0

    const-string v27, "pref_camera2_coloreffect_key"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/camera/SettingsManager;->getResource(Ljava/lang/String;I)[I

    move-result-object v22

    .line 993
    .local v22, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v26, v0

    const-string v27, "layout_inflater"

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 995
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 997
    .local v7, "gridOuterLayout":Landroid/widget/FrameLayout;
    const v26, 0x106000d

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 998
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 999
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    .line 1000
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    .line 1002
    const/16 v17, 0x0

    .line 1003
    .local v17, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v18, :cond_6

    .line 1004
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1005
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    move-object/from16 v26, v0

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1013
    :goto_3
    new-instance v26, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {v26 .. v28}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    const v26, 0x7f0d0062

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1016
    .local v6, "gridLayout":Landroid/widget/LinearLayout;
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v23, v0

    .line 1018
    .local v23, "views":[Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v26, v0

    const-string v27, "pref_camera2_coloreffect_key"

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v13

    .line 1019
    .local v13, "init":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_7

    .line 1020
    const v26, 0x7f040011

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/RotateLayout;

    .line 1022
    .local v5, "filterBox":Lcom/android/camera/ui/RotateLayout;
    const v26, 0x7f0d0053

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1023
    .local v11, "imageView":Landroid/widget/ImageView;
    move v14, v10

    .line 1025
    .local v14, "j":I
    new-instance v26, Lcom/android/camera/CaptureUI$24;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Lcom/android/camera/CaptureUI$24;-><init>(Lcom/android/camera/CaptureUI;I[Landroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1047
    aput-object v11, v23, v14

    .line 1048
    if-ne v10, v13, :cond_3

    .line 1049
    const v26, -0xcc4a1b

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1050
    :cond_3
    const v26, 0x7f0d0061

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1052
    .local v15, "label":Landroid/widget/TextView;
    aget v26, v22, v10

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1053
    aget-object v26, v4, v10

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1019
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 982
    .end local v5    # "filterBox":Lcom/android/camera/ui/RotateLayout;
    .end local v6    # "gridLayout":Landroid/widget/LinearLayout;
    .end local v7    # "gridOuterLayout":Landroid/widget/FrameLayout;
    .end local v8    # "gridRes":I
    .end local v10    # "i":I
    .end local v11    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "init":I
    .end local v14    # "j":I
    .end local v15    # "label":Landroid/widget/TextView;
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "portrait":Z
    .end local v21    # "size":I
    .end local v22    # "thumbnails":[I
    .end local v23    # "views":[Landroid/view/View;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 988
    .restart local v18    # "portrait":Z
    .restart local v21    # "size":I
    :cond_5
    const v8, 0x7f040012

    .restart local v8    # "gridRes":I
    goto/16 :goto_2

    .line 1008
    .restart local v7    # "gridOuterLayout":Landroid/widget/FrameLayout;
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v22    # "thumbnails":[I
    :cond_6
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1009
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    move-object/from16 v26, v0

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v27

    mul-int/lit8 v28, v21, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_3

    .line 1056
    .restart local v6    # "gridLayout":Landroid/widget/LinearLayout;
    .restart local v10    # "i":I
    .restart local v13    # "init":I
    .restart local v23    # "views":[Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public adjustOrientation()V
    .locals 2

    .prologue
    .line 1520
    iget v0, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureUI;->setOrientation(IZ)V

    .line 1521
    return-void
.end method

.method public animateFadeIn(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1065
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1066
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1067
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1068
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "forcePortrait"    # Z

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->getOrientation()I

    move-result v1

    .line 1107
    .local v1, "orientation":I
    if-nez p3, :cond_0

    .line 1108
    const/4 v1, 0x0

    .line 1110
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1112
    .local v2, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v3, 0x1

    .line 1113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1114
    sparse-switch v1, :sswitch_data_0

    .line 1160
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1161
    return-void

    .line 1116
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 1117
    .local v0, "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1118
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1121
    .end local v0    # "dest":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 1122
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1123
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1126
    .end local v0    # "dest":F
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 1127
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1128
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1131
    .end local v0    # "dest":F
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 1132
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1133
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1137
    .end local v0    # "dest":F
    :cond_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 1139
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 1140
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1141
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1144
    .end local v0    # "dest":F
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 1145
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1146
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1149
    .end local v0    # "dest":F
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 1150
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1151
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1154
    .end local v0    # "dest":F
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 1155
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1156
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 1137
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 1382
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showUIAfterCountDown()V

    goto :goto_0
.end method

.method public cleanUpMenus()V
    .locals 2

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showUI()V

    .line 1222
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 1223
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1224
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1440
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1445
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 1446
    :cond_0
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 3

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->showRefocusToast(Z)V

    .line 1415
    return v0
.end method

.method public doShutterAnimation()V
    .locals 2

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1200
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1201
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1202
    return-void
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 684
    :cond_0
    return-void
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1263
    :cond_0
    return-void
.end method

.method public enableVideo(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1272
    :cond_0
    return-void
.end method

.method public getBokehTipRct()Lcom/android/camera/ui/RotateLayout;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method public getBokehTipView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDisplaySize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMonoDummySurface()Landroid/view/Surface;
    .locals 6

    .prologue
    .line 1325
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    if-nez v4, :cond_1

    .line 1326
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 1327
    .local v1, "rs":Landroid/renderscript/RenderScript;
    new-instance v3, Landroid/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1328
    .local v3, "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    iget v4, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1329
    iget v4, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1330
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1331
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    const/16 v5, 0x21

    invoke-static {v1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 1332
    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    .line 1333
    .local v2, "yuvToRgbIntrinsic":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 1335
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_mono_preview_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1336
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1337
    .local v0, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    iget v4, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    invoke-virtual {v0, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1338
    iget v4, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    invoke-virtual {v0, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1339
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    const/16 v5, 0x41

    invoke-static {v1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    .line 1340
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 1341
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v5, Lcom/android/camera/CaptureUI$27;

    invoke-direct {v5, p0}, Lcom/android/camera/CaptureUI$27;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1348
    .end local v0    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    new-instance v5, Lcom/android/camera/CaptureUI$MonoDummyListener;

    invoke-direct {v5, p0, v2}, Lcom/android/camera/CaptureUI$MonoDummyListener;-><init>(Lcom/android/camera/CaptureUI;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)V

    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 1350
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    .line 1352
    .end local v1    # "rs":Landroid/renderscript/RenderScript;
    .end local v2    # "yuvToRgbIntrinsic":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .end local v3    # "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v4

    return-object v4
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1583
    iget v0, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceViewSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1514
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1515
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1516
    :cond_0
    return-object v0
.end method

.method public getTrackingFocusRenderer()Lcom/android/camera/ui/TrackingFocusRenderer;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    return-object v0
.end method

.method public getVideoButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCameraControls(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 1174
    if-eqz p1, :cond_6

    const/4 v0, 0x4

    .line 1175
    .local v0, "status":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1181
    :cond_5
    return-void

    .line 1174
    .end local v0    # "status":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePreviewCover()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1361
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    :cond_0
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 1749
    return-void
.end method

.method public hideUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1213
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 1218
    :goto_0
    return-void

    .line 1215
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    .line 1216
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1217
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/OneUICameraControls;->hideUI()V

    goto :goto_0
.end method

.method public hideUIWhileCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1164
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureUI;->hideCameraControls(Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1166
    return-void
.end method

.method public hideUIwhileRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 937
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/OneUICameraControls;->setVideoMode(Z)V

    .line 938
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_makeup_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 947
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 948
    return-void
.end method

.method public initFilterModeButton()V
    .locals 3

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_coloreffect_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const-string v2, "pref_camera2_coloreffect_key"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    new-instance v2, Lcom/android/camera/CaptureUI$22;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$22;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initFlashButton()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashToggleButton;->init(Z)V

    .line 742
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    const-string v1, "pref_camera2_flashmode_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public initSceneModeButton()V
    .locals 3

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 760
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    new-instance v2, Lcom/android/camera/CaptureUI$21;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$21;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initSwitchCamera()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 714
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_id_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "value":Ljava/lang/String;
    const-string v3, "SnapCam_CaptureUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value of KEY_CAMERA_ID is null? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-nez v0, :cond_1

    .line 738
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 716
    goto :goto_0

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    new-instance v2, Lcom/android/camera/CaptureUI$20;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$20;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public initializeBokehMode(Z)V
    .locals 6
    .param p1, "bokehmode"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 617
    if-eqz p1, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 619
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 620
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_camera2_bokeh_blur_key"

    const/16 v3, 0x32

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 621
    .local v1, "progress":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 622
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 623
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "progress":I
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 629
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initializeControlByIntent()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    .line 1185
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$26;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$26;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->setIntentMode(I)V

    .line 1196
    :cond_0
    return-void
.end method

.method public initializeFirstTime()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 644
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    .line 645
    .local v0, "intentMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 654
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 655
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v2, Lcom/android/camera/CaptureUI$18;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$18;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/CaptureUI$19;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$19;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    return-void

    .line 647
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 651
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initializeProMode(Z)V
    .locals 2
    .param p1, "promode"    # Z

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/OneUICameraControls;->setProMode(Z)V

    .line 610
    if-eqz p1, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initializeZoom(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->getMaxZoom(Ljava/util/List;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 675
    .local v0, "zoomMax":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(F)V

    .line 676
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(F)V

    .line 677
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v2, Lcom/android/camera/CaptureUI$ZoomChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/CaptureUI$ZoomChangeListener;-><init>(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureUI$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverControlRegion([I)Z
    .locals 3
    .param p1, "xy"    # [I

    .prologue
    .line 1619
    const/4 v2, 0x0

    aget v0, p1, v2

    .line 1620
    .local v0, "x":I
    const/4 v2, 0x1

    aget v1, p1, v2

    .line 1621
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->isControlRegion(II)Z

    move-result v2

    return v2
.end method

.method public isOverSurfaceView([I)Z
    .locals 8
    .param p1, "xy"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1625
    aget v3, p1, v6

    .line 1626
    .local v3, "x":I
    aget v4, p1, v5

    .line 1627
    .local v4, "y":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1628
    .local v0, "surfaceViewLocation":[I
    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v7, v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->getLocationInWindow([I)V

    .line 1629
    aget v1, v0, v6

    .line 1630
    .local v1, "surfaceViewX":I
    aget v2, v0, v5

    .line 1631
    .local v2, "surfaceViewY":I
    sub-int v7, v3, v1

    aput v7, p1, v6

    .line 1632
    sub-int v7, v4, v2

    aput v7, p1, v5

    .line 1633
    if-le v3, v1, :cond_0

    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v7}, Lcom/android/camera/ui/AutoFitSurfaceView;->getWidth()I

    move-result v7

    add-int/2addr v7, v1

    if-ge v3, v7, :cond_0

    if-le v4, v2, :cond_0

    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 1634
    invoke-virtual {v7}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    if-ge v4, v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public isPreviewMenuBeingShown()Z
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1283
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->handleBackKeyOnMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return v0

    .line 1284
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1285
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onButtonContinue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1695
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1697
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onButtonContinue()V

    .line 1698
    return-void
.end method

.method public onButtonPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1688
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1690
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onButtonPause()V

    .line 1691
    return-void
.end method

.method public onCameraOpened(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "cameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewGestures;->setCaptureUI(Lcom/android/camera/CaptureUI;)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureUI;->initializeZoom(Ljava/util/List;)V

    .line 582
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 1506
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "extendedFaces"    # [Lcom/android/camera/ExtendedFace;

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/Camera2FaceView;->setFaces([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    .line 1511
    return-void
.end method

.method public onFocusFailed(Z)V
    .locals 1
    .param p1, "timeOut"    # Z

    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1468
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    .line 1470
    :cond_0
    return-void
.end method

.method public onFocusStarted()V
    .locals 1

    .prologue
    .line 1455
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1456
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    .line 1457
    :cond_0
    return-void
.end method

.method public onFocusSucceeded(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1462
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    .line 1463
    :cond_0
    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    .prologue
    .line 1254
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1392
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->cancelCountDown()V

    .line 1393
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->collapseCameraControls()Z

    .line 1395
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 1401
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 1402
    iput-object v2, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_3

    .line 1405
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 1406
    iput-object v2, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 1409
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 4
    .param p1, "previewFocused"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1638
    if-eqz p1, :cond_5

    .line 1639
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showUI()V

    .line 1643
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-nez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/Camera2FaceView;->setBlockDraw(Z)V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 1651
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_7

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1653
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_3

    .line 1654
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez p1, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1656
    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 1657
    :cond_4
    return-void

    .line 1641
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->hideUI()V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1644
    goto :goto_1

    .line 1651
    :cond_7
    const/16 v0, 0x8

    goto :goto_2

    :cond_8
    move v1, v2

    .line 1654
    goto :goto_3
.end method

.method public onSettingsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1702
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SettingsManager$SettingState;

    .line 1703
    .local v0, "state":Lcom/android/camera/SettingsManager$SettingState;
    iget-object v3, v0, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    const-string v4, "pref_camera2_coloreffect_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1704
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const-string v4, "pref_camera2_coloreffect_key"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 1705
    :cond_1
    iget-object v3, v0, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1706
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1707
    .local v1, "value":Ljava/lang/String;
    const-string v3, "104"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1708
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_0

    .line 1710
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->needShowInstructional()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1711
    iget v3, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/android/camera/CaptureUI;->showSceneInstructionalDialog(I)V

    .line 1713
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->showSceneModeLabel()V

    goto :goto_0

    .line 1715
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    iget-object v3, v0, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    const-string v4, "pref_camera2_flashmode_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1716
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    const-string v4, "pref_camera2_flashmode_key"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 1719
    .end local v0    # "state":Lcom/android/camera/SettingsManager$SettingState;
    :cond_5
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/CaptureModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 1616
    return-void
.end method

.method public onStartFaceDetection(IZLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1482
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setBlockDraw(Z)V

    .line 1483
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1484
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/Camera2FaceView;->setDisplayOrientation(I)V

    .line 1486
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/Camera2FaceView;->setMirror(Z)V

    .line 1487
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/Camera2FaceView;->setCameraBound(Landroid/graphics/Rect;)V

    .line 1488
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setZoom(F)V

    .line 1489
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->resume()V

    .line 1490
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setBlockDraw(Z)V

    .line 1500
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1502
    :cond_0
    return-void
.end method

.method public openSettingsMenu()V
    .locals 3

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 711
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 708
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 709
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v2, Lcom/android/camera/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 710
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pauseFaceDetection()V
    .locals 0

    .prologue
    .line 1475
    return-void
.end method

.method public pressShutterButton()V
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1669
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1670
    return-void

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_0
.end method

.method public reInitUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initSceneModeButton()V

    .line 586
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFilterModeButton()V

    .line 587
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFlashButton()V

    .line 588
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->setMakeupButtonIcon()V

    .line 589
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->showSceneModeLabel()V

    .line 590
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 591
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_mono_preview_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_mono_preview_key"

    .line 600
    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 606
    :cond_0
    :goto_1
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    goto :goto_1
.end method

.method public removeAndCleanUpFilterMenu()V
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->cleanUpMenus()V

    .line 1062
    return-void
.end method

.method public removeFilterMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 691
    if-eqz p1, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureUI;->animateSlideOut(Landroid/view/View;)V

    .line 700
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 701
    return-void

    .line 694
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    .line 695
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public resetPauseButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1681
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1683
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/PauseButton;->setPaused(Z)V

    .line 1684
    return-void
.end method

.method public resetTrackingFocus()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 932
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 934
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 0

    .prologue
    .line 1479
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 1451
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 9
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v8, 0xb4

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1524
    iput p1, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    .line 1525
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/OneUICameraControls;->setOrientation(IZ)V

    .line 1526
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    if-eqz v3, :cond_0

    .line 1527
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setOrientation(IZ)V

    .line 1529
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1530
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1531
    .local v2, "vg":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 1532
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "vg":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 1533
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    if-eqz v2, :cond_2

    .line 1534
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1535
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1536
    .local v1, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1534
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1540
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_3

    .line 1541
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    neg-int v4, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 1543
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v3, :cond_4

    .line 1544
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/Camera2FaceView;->setDisplayRotation(I)V

    .line 1546
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v3, :cond_5

    .line 1547
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1548
    :cond_5
    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 1549
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v3, :cond_6

    .line 1550
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/ZoomRenderer;->setOrientation(I)V

    .line 1553
    :cond_6
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_7

    .line 1554
    if-ne p1, v8, :cond_a

    .line 1555
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setRotation(F)V

    .line 1556
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1557
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v5, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1565
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_8

    .line 1566
    if-ne p1, v8, :cond_b

    .line 1567
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setRotation(F)V

    .line 1568
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v5, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1575
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1576
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1577
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 1578
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureUI;->showSceneInstructionalDialog(I)V

    .line 1580
    :cond_9
    return-void

    .line 1559
    :cond_a
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setRotation(F)V

    .line 1560
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1561
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    .line 1570
    :cond_b
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setRotation(F)V

    .line 1571
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_2
.end method

.method public setPreviewSize(II)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1760
    const-string v1, "SnapCam_CaptureUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget v1, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    if-eq p2, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1762
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    .line 1763
    iput p2, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    .line 1764
    if-eqz v0, :cond_1

    .line 1765
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 1767
    :cond_1
    return v0

    .line 1761
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1674
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1678
    return-void
.end method

.method protected showCapturedImageForReview([BI)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 515
    new-instance v0, Lcom/android/camera/CaptureUI$DecodeImageForReview;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/CaptureUI$DecodeImageForReview;-><init>(Lcom/android/camera/CaptureUI;[BI)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    .line 516
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 517
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 519
    invoke-virtual {p0, v2}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 525
    :cond_1
    return-void
.end method

.method public showFirstTimeHelp()V
    .locals 5

    .prologue
    .line 1587
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1588
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "help_menu"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1589
    .local v1, "isMenuShown":Z
    if-nez v1, :cond_0

    .line 1590
    iget v3, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    iget v4, p0, Lcom/android/camera/CaptureUI;->mBottomMargin:I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CaptureUI;->showFirstTimeHelp(II)V

    .line 1591
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1592
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "help_menu"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1595
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    return-void
.end method

.method protected showRecordVideoForReview(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 530
    invoke-virtual {p0, v2}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewPlayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 538
    :cond_1
    return-void
.end method

.method public showRecordingUI(ZZ)V
    .locals 4
    .param p1, "recording"    # Z
    .param p2, "highspeed"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 796
    if-eqz p1, :cond_1

    .line 797
    if-eqz p2, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 802
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 803
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 813
    :goto_1
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashToggleButton;->init(Z)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FlashToggleButton;->init(Z)V

    .line 809
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showRefocusToast(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/OneUICameraControls;->showRefocusToast(Z)V

    .line 1420
    return-void
.end method

.method public showSurfaceView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1752
    const-string v0, "SnapCam_CaptureUI"

    const-string v1, "showSurfaceView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1754
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    iget v1, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    iget v2, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->setAspectRatio(II)V

    .line 1755
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 1756
    iput-boolean v3, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 1757
    return-void
.end method

.method public showTimeLapseUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 791
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 793
    :cond_0
    return-void

    .line 791
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1205
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    if-nez v0, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1207
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    .line 1208
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/OneUICameraControls;->showUI()V

    goto :goto_0
.end method

.method public showUIAfterCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1169
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureUI;->hideCameraControls(Z)V

    .line 1170
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1171
    return-void
.end method

.method public showUIafterRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 951
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->setVideoMode(Z)V

    .line 952
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iput-boolean v1, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 957
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 959
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->showSceneModeLabel()V

    .line 960
    return-void
.end method

.method public startCountDown(IZ)V
    .locals 1
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->initializeCountDown()V

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->startCountDown(IZ)V

    .line 1388
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->hideUIWhileCountDown()V

    .line 1389
    return-void
.end method

.method public startSelfieFlash()V
    .locals 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->bringToFront()V

    .line 1725
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->open()V

    .line 1726
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureUI;->setScreenBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    .line 1727
    return-void
.end method

.method public stopSelfieFlash()V
    .locals 2

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->close()V

    .line 1733
    iget v0, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1734
    iget v0, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureUI;->setScreenBrightness(F)F

    .line 1735
    :cond_1
    return-void
.end method

.method public updateFaceViewCameraBound(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cameraBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/Camera2FaceView;->setCameraBound(Landroid/graphics/Rect;)V

    .line 1494
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setZoom(F)V

    .line 1495
    return-void
.end method

.method public updateMenus()V
    .locals 8

    .prologue
    .line 1227
    const/4 v2, 0x1

    .line 1228
    .local v2, "enableMakeupMenu":Z
    const/4 v1, 0x1

    .line 1229
    .local v1, "enableFilterMenu":Z
    const/4 v3, 0x1

    .line 1230
    .local v3, "enableSceneMenu":Z
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v7, "pref_camera2_makeup_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1231
    .local v4, "makeupValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v7, "pref_camera2_coloreffect_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v0

    .line 1232
    .local v0, "colorEffect":I
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v7, "pref_camera2_scenemode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1233
    .local v5, "sceneMode":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1234
    const/4 v3, 0x0

    .line 1235
    const/4 v1, 0x0

    .line 1244
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1245
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1246
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1247
    return-void

    .line 1236
    :cond_1
    if-nez v0, :cond_2

    iget v6, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1237
    :cond_2
    const/4 v3, 0x0

    .line 1238
    const/4 v2, 0x0

    goto :goto_0

    .line 1239
    :cond_3
    if-eqz v5, :cond_0

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1240
    const/4 v2, 0x0

    .line 1241
    const/4 v1, 0x0

    goto :goto_0
.end method
