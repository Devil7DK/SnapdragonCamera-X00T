.class public Lcom/android/camera/VideoUI;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
.implements Lcom/android/camera/PauseButton$OnPauseButtonListener;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoUI$ZoomChangeListener;,
        Lcom/android/camera/VideoUI$SettingsPopup;,
        Lcom/android/camera/VideoUI$SURFACE_STATUS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_VideoUI"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private final mAnimationManager:Lcom/android/camera/AnimationManager;

.field private mAspectRatio:F

.field private mAspectRatioResize:Z

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mController:Lcom/android/camera/VideoController;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFlashOverlay:Landroid/view/View;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mIsTimeLapse:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mMaxPreviewHeight:I

.field private mMaxPreviewWidth:I

.field private mMenuButton:Landroid/view/View;

.field private mMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mMuteButton:Lcom/android/camera/ui/RotateImageView;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mOrientation:I

.field private mOrientationResize:Z

.field private mPauseButton:Lcom/android/camera/PauseButton;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

.field private mPrevOrientationResize:Z

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewMenuLayout:Landroid/widget/LinearLayout;

.field private mPreviewOrientation:I

.field private mRecordingStarted:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mScreenRatio:I

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

.field private mSurfaceTextureUncroppedHeight:F

.field private mSurfaceTextureUncroppedWidth:F

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTimeLapseLabel:Landroid/view/View;

.field private mTopMargin:I

.field private mUIhidden:Z

.field private mVideoMenu:Lcom/android/camera/VideoMenu;

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/VideoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    .line 106
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mIsTimeLapse:Z

    .line 112
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 113
    iput v6, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    .line 114
    iput v6, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    .line 115
    const v3, 0x3faaaaab

    iput v3, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 118
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    .line 119
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    .line 122
    iput v6, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    .line 123
    iput v6, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    .line 124
    iput v6, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    .line 195
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 196
    iput-object p2, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    .line 197
    iput-object p3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    .line 198
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040046

    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 200
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    .line 202
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 203
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 205
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 206
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 207
    const-string v3, "CAM_VideoUI"

    const-string v4, "Using mdp_preview_content (MDP path)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 209
    .local v2, "surfaceContainer":Landroid/view/View;
    new-instance v3, Lcom/android/camera/VideoUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoUI$1;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 246
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mFlashOverlay:Landroid/view/View;

    .line 247
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ShutterButton;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 248
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 249
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 250
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v4, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 251
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v4, Lcom/android/camera/VideoUI$2;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoUI$2;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateImageView;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    .line 260
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 261
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    check-cast v3, Lcom/android/camera/VideoModule;

    invoke-virtual {v3}, Lcom/android/camera/VideoModule;->isAudioMute()Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v4, 0x7f020121

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 266
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v4, Lcom/android/camera/VideoUI$3;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoUI$3;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeMiscControls()V

    .line 279
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeControlByIntent()V

    .line 280
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeOverlay()V

    .line 281
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializePauseButton()V

    .line 283
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/CameraControls;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 284
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00a9

    .line 285
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 286
    .local v0, "faceViewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 288
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/FaceView;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 289
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoUI;->setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V

    .line 291
    :cond_0
    new-instance v3, Lcom/android/camera/AnimationManager;

    invoke-direct {v3}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 292
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    .line 293
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mPrevOrientationResize:Z

    .line 295
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 296
    .local v1, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 297
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    .line 298
    invoke-direct {p0, v1}, Lcom/android/camera/VideoUI;->calculateMargins(Landroid/graphics/Point;)V

    .line 299
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v4, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v5, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/CameraControls;->setMargins(II)V

    .line 300
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 301
    return-void

    .line 264
    .end local v0    # "faceViewStub":Landroid/view/ViewStub;
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v4, 0x7f02008c

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/VideoUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/VideoUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->popupDismissed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/VideoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/VideoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/VideoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mPrevOrientationResize:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/VideoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/VideoUI;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoUI;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # F

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI;->layoutPreview(F)V

    return-void
.end method

.method private calculateMargins(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 304
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 305
    .local v1, "l":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 306
    .local v2, "tm":I
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 307
    .local v0, "bm":I
    div-int/lit8 v3, v1, 0x4

    mul-int/2addr v3, v2

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    .line 308
    div-int/lit8 v3, v1, 0x4

    iget v4, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    .line 309
    return-void

    .line 304
    .end local v0    # "bm":I
    .end local v1    # "l":I
    .end local v2    # "tm":I
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$4;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraControls;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 339
    new-instance v0, Lcom/android/camera/OnScreenIndicators;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0072

    .line 340
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 341
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenIndicators;->resetToDefault()V

    .line 342
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideSwitcher()V

    .line 344
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002d

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    .line 351
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$5;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$6;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$7;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$7;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    :cond_0
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 716
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 717
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 718
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 720
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 721
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 722
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 723
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    .line 726
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 727
    return-void
.end method

.method private initializeOverlay()V
    .locals 6

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 659
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 662
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-nez v0, :cond_1

    .line 665
    new-instance v0, Lcom/android/camera/VideoMenu;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/VideoMenu;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoUI;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 668
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_2

    .line 669
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 672
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_3

    .line 673
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 674
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setGestures(Lcom/android/camera/PreviewGestures;)V

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setVideoMenu(Lcom/android/camera/VideoMenu;)V

    .line 678
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 693
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    .line 694
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/VideoUI$8;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$8;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    return-void
.end method

.method private initializePauseButton()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PauseButton;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    .line 731
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/PauseButton;->setOnPauseButtonListener(Lcom/android/camera/PauseButton$OnPauseButtonListener;)V

    .line 732
    return-void
.end method

.method private layoutPreview(F)V
    .locals 14
    .param p1, "ratio"    # F

    .prologue
    const/16 v13, 0x11

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 401
    const/4 v2, 0x0

    .line 404
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    .line 405
    .local v3, "rotation":I
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v8

    iput v8, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    .line 406
    iget v8, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 407
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determinCloseRatio(F)I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 408
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    mul-int/lit8 v1, v8, 0x4

    .line 409
    .local v1, "l":I
    mul-int/lit8 v8, v1, 0x9

    div-int/lit8 v4, v8, 0x10

    .line 410
    .local v4, "s":I
    sparse-switch v3, :sswitch_data_0

    .line 430
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 431
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    invoke-virtual {v2, v10, v8, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 432
    int-to-float v6, v4

    .line 433
    .local v6, "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 483
    .end local v1    # "l":I
    .end local v4    # "s":I
    .local v5, "scaledTextureHeight":F
    :goto_0
    iget v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_1

    .line 485
    :cond_0
    iput v6, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    .line 486
    iput v5, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    .line 487
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    if-eqz v8, :cond_1

    .line 488
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    iget v9, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    float-to-int v10, v10

    invoke-interface {v8, v9, v10}, Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;->onSurfaceTextureSizeChanged(II)V

    .line 491
    const-string v8, "CAM_VideoUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSurfaceTextureUncroppedWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mSurfaceTextureUncroppedHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1
    if-eqz v2, :cond_2

    .line 498
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->requestLayout()V

    .line 500
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v8, :cond_2

    .line 501
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/FaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_2
    return-void

    .line 412
    .restart local v1    # "l":I
    .restart local v4    # "s":I
    :sswitch_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 413
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    invoke-virtual {v2, v8, v10, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 414
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 415
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 416
    .restart local v5    # "scaledTextureHeight":F
    goto :goto_0

    .line 418
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 419
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    invoke-virtual {v2, v10, v8, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 420
    int-to-float v6, v4

    .line 421
    .restart local v6    # "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 422
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 424
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 425
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    invoke-virtual {v2, v8, v10, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 426
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 427
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 428
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 437
    .end local v1    # "l":I
    .end local v4    # "s":I
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_3
    iget v8, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    int-to-float v7, v8

    .local v7, "width":F
    iget v8, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    int-to-float v0, v8

    .line 438
    .local v0, "height":F
    cmpl-float v8, v7, v11

    if-eqz v8, :cond_2

    cmpl-float v8, v0, v11

    if-eqz v8, :cond_2

    .line 439
    iget v8, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    if-ne v8, v12, :cond_4

    .line 440
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 441
    :cond_4
    iget-boolean v8, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    if-eqz v8, :cond_a

    .line 442
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 443
    .restart local v6    # "scaledTextureWidth":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_9

    .line 444
    move v6, v7

    .line 445
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    div-float v5, v6, v8

    .line 469
    .restart local v5    # "scaledTextureHeight":F
    :goto_1
    const-string v8, "CAM_VideoUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setTransformMatrix: scaledTextureWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scaledTextureHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-eqz v3, :cond_5

    const/16 v8, 0xb4

    if-ne v3, v8, :cond_6

    :cond_5
    cmpl-float v8, v6, v5

    if-gtz v8, :cond_8

    :cond_6
    const/16 v8, 0x5a

    if-eq v3, v8, :cond_7

    const/16 v8, 0x10e

    if-ne v3, v8, :cond_e

    :cond_7
    cmpg-float v8, v6, v5

    if-gez v8, :cond_e

    .line 475
    :cond_8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v8, v5

    float-to-int v9, v6

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 447
    .end local v5    # "scaledTextureHeight":F
    :cond_9
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 450
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_a
    cmpl-float v8, v7, v0

    if-lez v8, :cond_c

    .line 451
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_b

    .line 452
    move v6, v7

    .line 453
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    div-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 455
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_b
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 456
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 459
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_c
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float/2addr v8, v7

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_d

    .line 460
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    div-float v6, v0, v8

    .line 461
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 463
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_d
    move v6, v7

    .line 464
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 478
    :cond_e
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v8, v6

    float-to-int v9, v5

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private popupDismissed()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    .line 781
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public adjustOrientation()V
    .locals 2

    .prologue
    .line 1261
    iget v0, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoUI;->setOrientation(IZ)V

    .line 1262
    return-void
.end method

.method public animateCapture()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->animateCapture(Landroid/graphics/Bitmap;)V

    .line 521
    return-void
.end method

.method public animateCapture(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 529
    const-string v0, "CAM_VideoUI"

    const-string v1, "No valid bitmap for capture animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/AnimationManager;->startCaptureAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method public animateFlash()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mFlashOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/AnimationManager;->startFlashAnimation(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method public declared-synchronized applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V
    .locals 2
    .param p1, "status"    # Lcom/android/camera/VideoUI$SURFACE_STATUS;

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    if-ne p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cameraOrientationPreviewResize(Z)V
    .locals 1
    .param p1, "orientation"    # Z

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mPrevOrientationResize:Z

    .line 313
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    .line 314
    return-void
.end method

.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    invoke-virtual {v0}, Lcom/android/camera/AnimationManager;->cancelAnimations()V

    .line 541
    return-void
.end method

.method public cleanupListview()V
    .locals 2

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->showUI()V

    .line 796
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 797
    return-void
.end method

.method public clickShutter()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    .line 1103
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 578
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->closeAllView()V

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v1, :cond_1

    .line 582
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 583
    const/4 v0, 0x1

    .line 585
    :cond_1
    return v0
.end method

.method public dismissLevel1()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 804
    :cond_0
    return-void
.end method

.method public dismissLevel2()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 811
    :cond_0
    return-void
.end method

.method public dismissPopup(Z)V
    .locals 1
    .param p1, "topLevelOnly"    # Z

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isInReviewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI$SettingsPopup;->dismiss(Z)V

    goto :goto_0
.end method

.method public dismissSceneModeMenu()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 830
    :cond_0
    return-void
.end method

.method public enableCameraControls(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 603
    :cond_1
    return-void

    .line 598
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableShutter(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 957
    if-eqz p1, :cond_1

    .line 958
    const-string v0, "CAM_VideoUI"

    const-string v1, "Shutter Button enabled !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 964
    :cond_0
    return-void

    .line 960
    :cond_1
    const-string v0, "CAM_VideoUI"

    const-string v1, "Shutter Button disabled !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1257
    iget v0, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    return v0
.end method

.method public getPreviewMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getShutterButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hidePieRenderer()Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 944
    const/4 v0, 0x1

    .line 946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePreviewCover()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 143
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public hideReviewUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1046
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1048
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    .line 1050
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->showUI()V

    .line 1051
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v2}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1053
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1055
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 651
    return-void
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 564
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 565
    return-void
.end method

.method public hideSwitcherPopup()Z
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1213
    const/4 v0, 0x1

    .line 1215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideUI()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 545
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    .line 548
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    goto :goto_0
.end method

.method public hideUIwhileRecording()V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setWillNotDraw(Z)V

    .line 1019
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->hideUI()V

    .line 1020
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 607
    return-void
.end method

.method public initializePopup(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 1083
    return-void
.end method

.method public initializeSurfaceView()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 323
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 325
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 327
    :cond_0
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1086
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 1099
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 1091
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoUI;->mZoomMax:I

    .line 1092
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    .line 1095
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/VideoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 1096
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 1097
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/VideoUI$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/VideoUI;Lcom/android/camera/VideoUI$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public is4KEnabled()Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->is4KEnabled()Z

    move-result v0

    .line 776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewCoverVisible()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 784
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->handleBackKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 787
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hidePieRenderer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onButtonContinue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1195
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1197
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onButtonContinue()V

    .line 1198
    return-void
.end method

.method public onButtonPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1188
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1190
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onButtonPause()V

    .line 1191
    return-void
.end method

.method public onDisplayChanged()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 1128
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->updateCameraOrientation()V

    .line 1129
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 1266
    const-string v0, "CAM_VideoUI"

    const-string v1, "onFacedetectopmn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 1268
    return-void
.end method

.method public onPieClosed()V
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 977
    return-void
.end method

.method public onPieMoved(II)V
    .locals 0
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 982
    return-void
.end method

.method public onPieOpened(II)V
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 971
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 972
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 2
    .param p1, "previewFocused"    # Z

    .prologue
    .line 1066
    if-eqz p1, :cond_2

    .line 1067
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->showUI()V

    .line 1071
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1078
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI;->setShowMenu(Z)V

    .line 1079
    return-void

    .line 1069
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideUI()V

    goto :goto_0

    .line 1076
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hidePieRenderer()Z

    .line 939
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/VideoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 997
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1279
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1280
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1281
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1283
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1284
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1285
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1290
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1292
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->overrideSettings([Ljava/lang/String;)V

    .line 631
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1272
    :cond_0
    return-void
.end method

.method public pressShutter(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1107
    return-void
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 624
    return-void
.end method

.method public removeLevel2()V
    .locals 3

    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 843
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->removeView(Landroid/view/View;)V

    .line 845
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public removeSceneModeMenu()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->cleanupListview()V

    .line 838
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 589
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetPauseButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1201
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1203
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/PauseButton;->setPaused(Z)V

    .line 1204
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1276
    :cond_0
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v2, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 820
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 822
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAspectRatio(D)V
    .locals 3
    .param p1, "ratio"    # D

    .prologue
    const/4 v2, 0x1

    .line 742
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 743
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    .line 745
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double p1, v0, p1

    .line 748
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_1

    .line 749
    iput-boolean v2, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    .line 750
    double-to-float v0, p1

    iput v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v1, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 754
    double-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoUI;->layoutPreview(F)V

    .line 755
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 614
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    if-eq v0, p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    .line 615
    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->isPreviewMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->dismissSceneModeMenu()V

    .line 617
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->addModeBack()V

    .line 619
    :cond_2
    iput p1, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    .line 620
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1219
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 1220
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_0

    .line 1221
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1222
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_1

    .line 1223
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1224
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_2

    .line 1225
    const/16 v3, 0xb4

    if-ne p1, v3, :cond_4

    .line 1226
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v5, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1227
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 1233
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    .line 1234
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1235
    .local v2, "vg":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3

    .line 1236
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "vg":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 1237
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_3
    if-eqz v2, :cond_5

    .line 1238
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 1239
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1240
    .local v1, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1238
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1229
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 1230
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 1244
    :cond_5
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v3, :cond_6

    .line 1245
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/ZoomRenderer;->setOrientation(I)V

    .line 1247
    :cond_6
    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 1248
    iput p1, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    .line 1249
    return-void
.end method

.method public setOrientationIndicator(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 637
    div-int/lit8 v0, p1, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public setPrefChangedListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 712
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public setPreviewGesturesVideoUI()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 708
    return-void
.end method

.method public setPreviewMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 922
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 375
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 376
    :cond_0
    const-string v1, "CAM_VideoUI"

    const-string v2, "Preview size should not be 0."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 380
    :cond_1
    if-le p1, p2, :cond_4

    .line 381
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 385
    .local v0, "ratio":F
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 386
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_2

    .line 388
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 391
    :cond_2
    iget v1, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 392
    iput-boolean v3, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    .line 393
    iput v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v2, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 397
    invoke-direct {p0, v0}, Lcom/android/camera/VideoUI;->layoutPreview(F)V

    goto :goto_0

    .line 383
    .end local v0    # "ratio":F
    :cond_4
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    .restart local v0    # "ratio":F
    goto :goto_1
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1119
    return-void
.end method

.method public setShutterPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .line 318
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 986
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 573
    return-void
.end method

.method public showPopup(Landroid/widget/ListView;IZ)V
    .locals 10
    .param p1, "popup"    # Landroid/widget/ListView;
    .param p2, "level"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideUI()V

    .line 851
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 852
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 853
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v6, :cond_0

    .line 854
    new-instance v6, Lcom/android/camera/ui/RotateLayout;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 855
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 856
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 864
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 867
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v7, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 868
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 870
    :cond_1
    const/4 v6, 0x2

    if-ne p2, v6, :cond_5

    .line 871
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v6, :cond_2

    .line 872
    new-instance v6, Lcom/android/camera/ui/RotateLayout;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 873
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 875
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v2}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 879
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    .line 880
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 889
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget v6, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_a

    :cond_3
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    .line 890
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .local v3, "screenHeight":I
    :goto_2
    move-object v6, p1

    .line 891
    check-cast v6, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v6}, Lcom/android/camera/ui/ListSubMenu;->getPreCalculatedHeight()I

    move-result v0

    .local v0, "height":I
    move-object v6, p1

    .line 892
    check-cast v6, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v6}, Lcom/android/camera/ui/ListSubMenu;->getYBase()I

    move-result v5

    .line 893
    .local v5, "yBase":I
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 894
    .local v4, "y":I
    add-int v6, v5, v0

    if-le v6, v3, :cond_4

    .line 895
    const/4 v6, 0x0

    sub-int v7, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 896
    :cond_4
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b

    .line 897
    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 902
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 904
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v7, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 906
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "screenHeight":I
    .end local v4    # "y":I
    .end local v5    # "yBase":I
    :cond_5
    if-eqz p3, :cond_c

    .line 907
    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    .line 908
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    sget v8, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/camera/VideoMenu;->animateSlideIn(Landroid/view/View;IZ)V

    .line 909
    :cond_6
    const/4 v6, 0x2

    if-ne p2, v6, :cond_7

    .line 910
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v6, p1}, Lcom/android/camera/VideoMenu;->animateFadeIn(Landroid/widget/ListView;)V

    .line 914
    :cond_7
    :goto_4
    return-void

    .line 860
    :cond_8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, -0x2

    const/16 v8, 0x35

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 884
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v7, -0x2

    const/16 v8, 0x35

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    .line 890
    :cond_a
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    .line 899
    .restart local v0    # "height":I
    .restart local v3    # "screenHeight":I
    .restart local v4    # "y":I
    .restart local v5    # "yBase":I
    :cond_b
    const/4 v6, 0x0

    sget v7, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 913
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "screenHeight":I
    .end local v4    # "y":I
    .end local v5    # "yBase":I
    :cond_c
    const v6, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setAlpha(F)V

    goto :goto_4
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideUI()V

    .line 931
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI$SettingsPopup;->dismiss(Z)V

    .line 934
    :cond_0
    new-instance v0, Lcom/android/camera/VideoUI$SettingsPopup;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/VideoUI$SettingsPopup;-><init>(Lcom/android/camera/VideoUI;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    .line 935
    return-void
.end method

.method public showPreviewBorder(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 990
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public showRecordingUI(Z)V
    .locals 4
    .param p1, "recording"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1000
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    .line 1001
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1003
    if-eqz p1, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideSwitcher()V

    .line 1006
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1015
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1001
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1002
    goto :goto_1

    .line 1009
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1011
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->showSwitcher()V

    .line 1013
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public showReviewControls()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1035
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1036
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1037
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    .line 1041
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->hideUI()V

    .line 1042
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v2}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1043
    return-void
.end method

.method public showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1032
    return-void
.end method

.method public showSurfaceView()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 655
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 569
    return-void
.end method

.method public showTimeLapseUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mIsTimeLapse:Z

    .line 762
    return-void

    .line 759
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showUI()V
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    .line 555
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    goto :goto_0
.end method

.method public showUIafterRecording()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setWillNotDraw(Z)V

    .line 1024
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->showUI()V

    .line 1027
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1164
    const-string v0, "CAM_VideoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1169
    const-string v0, "CAM_VideoUI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1171
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onPreviewUIReady()V

    .line 1172
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 1173
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1177
    const-string v0, "CAM_VideoUI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1179
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onPreviewUIDestroyed()V

    .line 1180
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->tryToCloseSubList()V

    .line 1254
    :cond_0
    return-void
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "prefs"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 736
    const-string v1, "pref_camera_recordlocation_key"

    invoke-static {p2, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 737
    .local v0, "location":Z
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 739
    return-void
.end method
