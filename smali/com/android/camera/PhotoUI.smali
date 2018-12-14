.class public Lcom/android/camera/PhotoUI;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
.implements Lcom/android/camera/FocusOverlayManager$FocusUI;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoUI$ZoomChangeListener;,
        Lcom/android/camera/PhotoUI$DecodeImageForReview;,
        Lcom/android/camera/PhotoUI$DecodeTask;,
        Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;,
        Lcom/android/camera/PhotoUI$SURFACE_STATUS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_UI"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private final mAnimationManager:Lcom/android/camera/AnimationManager;

.field private mAspectRatio:F

.field private mAspectRatioResize:Z

.field private mBlurDegreeProgressBar:Landroid/widget/SeekBar;

.field private mBokehDialog:Landroid/widget/FrameLayout;

.field private mBokehDialogText:Landroid/widget/TextView;

.field private mBokehLayout:Lcom/android/camera/ui/BokehLayout;

.field private mBokehText:Landroid/widget/TextView;

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mController:Lcom/android/camera/PhotoController;

.field private mCountDownView:Lcom/android/camera/ui/CountDownView;

.field private mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

.field private mDismissAll:Z

.field private mDownSampleFactor:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFlashOverlay:Landroid/view/View;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mIsBokehMode:Z

.field private mIsLayoutInitializedAlready:Z

.field private mLocationDialog:Landroid/app/AlertDialog;

.field private mMakeupMenuLayout:Landroid/widget/LinearLayout;

.field private mMaxPreviewHeight:I

.field private mMaxPreviewWidth:I

.field private mMenu:Lcom/android/camera/PhotoMenu;

.field private mMenuButton:Landroid/view/View;

.field private mMenuHelp:Lcom/android/camera/ui/MenuHelp;

.field public mMenuInitialized:Z

.field private mMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mOrientation:I

.field private mOrientationResize:Z

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPrevOrientationResize:Z

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewMenuLayout:Landroid/widget/LinearLayout;

.field private mPreviewOrientation:I

.field private mProgressDialog:Landroid/widget/FrameLayout;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mScreenBrightness:F

.field private mScreenRatio:I

.field private mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mSurfaceCreated:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceResized:Z

.field private mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

.field private mSurfaceTextureUncroppedHeight:F

.field private mSurfaceTextureUncroppedWidth:F

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTopMargin:I

.field private mUIhidden:Z

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
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PhotoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    .line 118
    iput-object v4, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 142
    iput v7, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    .line 143
    iput v7, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    .line 145
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    .line 153
    iput-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 154
    const v3, 0x3faaaaab

    iput v3, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 164
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 165
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    .line 167
    iput v7, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 168
    iput v7, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    .line 169
    iput v7, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    .line 170
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    .line 173
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    .line 174
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    .line 186
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    .line 187
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    .line 999
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    .line 260
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 261
    iput-object p2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    .line 262
    iput-object p3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 263
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040027

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 265
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    .line 267
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 268
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 269
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 270
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 271
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 272
    const-string v3, "CAM_UI"

    const-string v4, "Using mdp_preview_content (MDP path)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v4, Lcom/android/camera/PhotoUI$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoUI$1;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 296
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RenderOverlay;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 297
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mFlashOverlay:Landroid/view/View;

    .line 298
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ShutterButton;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 299
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 300
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 301
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 302
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v4, Lcom/android/camera/PhotoUI$2;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoUI$2;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d001b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    .line 314
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    .line 315
    .local v1, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    .line 318
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 320
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/CameraControls;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 321
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00a9

    .line 322
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 323
    .local v0, "faceViewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 325
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/FaceView;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 326
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoUI;->setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initIndicators()V

    .line 329
    new-instance v3, Lcom/android/camera/AnimationManager;

    invoke-direct {v3}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 330
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    .line 331
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    .line 333
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 334
    .local v2, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 335
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 336
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoUI;->calculateMargins(Landroid/graphics/Point;)V

    .line 337
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v5, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/CameraControls;->setMargins(II)V

    .line 338
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showFirstTimeHelp()V

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/MenuHelp;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/PhotoUI;Lcom/android/camera/ui/MenuHelp;)Lcom/android/camera/ui/MenuHelp;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/ui/MenuHelp;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/CameraControls;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/PhotoUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$DecodeImageForReview;)Lcom/android/camera/PhotoUI$DecodeImageForReview;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoUI;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    return v0
.end method

.method private calculateMargins(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 346
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 347
    .local v1, "l":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 348
    .local v2, "tm":I
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 349
    .local v0, "bm":I
    div-int/lit8 v3, v1, 0x4

    mul-int/2addr v3, v2

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    .line 350
    div-int/lit8 v3, v1, 0x4

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    .line 351
    return-void

    .line 346
    .end local v0    # "bm":I
    .end local v1    # "l":I
    .end local v2    # "tm":I
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    goto :goto_0
.end method

.method private initIndicators()V
    .locals 4

    .prologue
    .line 546
    new-instance v0, Lcom/android/camera/OnScreenIndicators;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0072

    .line 547
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 548
    return-void
.end method

.method private initializeCountDown()V
    .locals 4

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040007

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1265
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    .line 1266
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    check-cast v0, Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CountDownView;->setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V

    .line 1267
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->bringToFront()V

    .line 1268
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1269
    return-void
.end method

.method private openMenu()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->getCameraState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->cancelAutoFocus()V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 604
    :cond_1
    return-void
.end method

.method private setScreenBrightness(F)F
    .locals 4
    .param p1, "brightness"    # F

    .prologue
    .line 1305
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1306
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1307
    .local v0, "layout":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1308
    .local v1, "originalBrightness":F
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1309
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1310
    return v1
.end method

.method private setShowMenu(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1061
    :cond_0
    return-void

    .line 1059
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showFirstTimeHelp(II)V
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MenuHelp;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    .line 364
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setMargins(II)V

    .line 366
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    new-instance v1, Lcom/android/camera/PhotoUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$3;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    return-void
.end method


# virtual methods
.method public adjustOrientation()V
    .locals 2

    .prologue
    .line 1532
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 1533
    return-void
.end method

.method public animateCapture([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 589
    return-void
.end method

.method public animateFlash()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFlashOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/AnimationManager;->startFlashAnimation(Landroid/view/View;)V

    .line 811
    return-void
.end method

.method public declared-synchronized applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V
    .locals 2
    .param p1, "status"    # Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    if-ne p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

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
    .line 358
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    .line 359
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    .line 360
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 1278
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUIAfterCountDown()V

    goto :goto_0
.end method

.method public cleanupListview()V
    .locals 2

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUI()V

    .line 990
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 991
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1378
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 1383
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hasFaces()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->showStart()V

    .line 1386
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 1387
    :cond_1
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 3

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1068
    const/4 v0, 0x0

    .line 1069
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->removeAllView()V

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissAllPopup()V

    .line 1074
    const/4 v0, 0x1

    .line 1076
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 1077
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraControls;->showRefocusToast(Z)V

    .line 1078
    return v0
.end method

.method public dismissAllPopup()V
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    .line 1002
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1005
    :cond_0
    return-void
.end method

.method public dismissLevel1()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1012
    :cond_0
    return-void
.end method

.method public dismissLevel2()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1019
    :cond_0
    return-void
.end method

.method public dismissPopup()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 997
    :cond_0
    return-void
.end method

.method public dismissSceneModeMenu()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 1041
    :cond_0
    return-void
.end method

.method public doShutterAnimation()V
    .locals 2

    .prologue
    .line 744
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 745
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 746
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 747
    return-void
.end method

.method public enableBokehFocus(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehMode(Z)V

    .line 1229
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1230
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableBokehRender(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehMode(Z)V

    .line 1222
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    .line 1224
    :cond_0
    return-void
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 817
    :cond_0
    return-void
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1137
    :cond_0
    return-void
.end method

.method public getBokehDegreeBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getCameraControls()Lcom/android/camera/ui/CameraControls;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    return-object v0
.end method

.method public getMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1528
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method public getPreviewMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hidePostCaptureAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1096
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showCameraSettings()V

    .line 1097
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->cancel(Z)Z

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v2}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoMenu;->hideTopMenu(Z)V

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1107
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1109
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 1110
    return-void
.end method

.method public hidePreviewCover()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1327
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    :cond_0
    return-void
.end method

.method public hideRemainingPhotoCnt()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideRemainingPhotoCnt()V

    .line 685
    return-void
.end method

.method public hideRender()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1634
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1255
    return-void
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 712
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 713
    return-void
.end method

.method public hideTSMakeUp()V
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->hideTSMakeUp()V

    .line 1577
    :cond_0
    return-void
.end method

.method public hideUI()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 693
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 696
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    goto :goto_0
.end method

.method public hideUIWhileCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1563
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideCameraControls(Z)V

    .line 1564
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1565
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 1359
    return-void
.end method

.method public initializeControlByIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 608
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    .line 611
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/PhotoUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$4;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    .line 630
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/BokehLayout;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    .line 633
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    .line 636
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    .line 637
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$5;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideSwitcher()V

    .line 647
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraControls;->hideRemainingPhotoCnt()V

    .line 648
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitcherVisibility(Z)V

    .line 649
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 650
    .local v0, "cameraControls":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002d

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 652
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    .line 653
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    .line 654
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    .line 655
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 656
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$6;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$7;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$8;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    .end local v0    # "cameraControls":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public initializeFirstTime()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 727
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/PhotoUI$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$9;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 740
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 741
    return-void
.end method

.method public initializeSecondTime(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 752
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 759
    .local v0, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 760
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 763
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    .line 766
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    .line 769
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 771
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 772
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 773
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoUI$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

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

.method public isPreviewCoverVisible()Z
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    .line 1334
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x1

    .line 1337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public layoutPreview(F)V
    .locals 12
    .param p1, "ratio"    # F

    .prologue
    .line 398
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    .line 399
    .local v3, "rotation":I
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v8

    iput v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 400
    iget v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 401
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determinCloseRatio(F)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 402
    iget v8, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    mul-int/lit8 v1, v8, 0x4

    .line 403
    .local v1, "l":I
    mul-int/lit8 v8, v1, 0x9

    div-int/lit8 v4, v8, 0x10

    .line 404
    .local v4, "s":I
    sparse-switch v3, :sswitch_data_0

    .line 424
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 425
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 426
    int-to-float v6, v4

    .line 427
    .local v6, "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 480
    .end local v1    # "l":I
    .end local v4    # "s":I
    .local v5, "scaledTextureHeight":F
    :cond_0
    :goto_0
    iget v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_1

    iget v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_2

    .line 482
    :cond_1
    iput v6, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    .line 483
    iput v5, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    .line 484
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    if-eqz v8, :cond_2

    .line 485
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    iget v9, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    float-to-int v10, v10

    invoke-interface {v8, v9, v10}, Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;->onSurfaceTextureSizeChanged(II)V

    .line 488
    const-string v8, "CAM_UI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSurfaceTextureUncroppedWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mSurfaceTextureUncroppedHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_2
    iget-boolean v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    if-eqz v8, :cond_3

    .line 494
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    .line 497
    :cond_3
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 499
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v8, :cond_4

    .line 500
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/FaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    .line 503
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_5
    return-void

    .line 406
    .restart local v1    # "l":I
    .restart local v4    # "s":I
    :sswitch_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 407
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 408
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 409
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 410
    .restart local v5    # "scaledTextureHeight":F
    goto :goto_0

    .line 412
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 413
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 414
    int-to-float v6, v4

    .line 415
    .restart local v6    # "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 416
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 418
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 419
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 420
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 421
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 422
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 431
    .end local v1    # "l":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "s":I
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_6
    iget v8, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    int-to-float v7, v8

    .local v7, "width":F
    iget v8, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    int-to-float v0, v8

    .line 432
    .local v0, "height":F
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_5

    .line 433
    iget v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 434
    iget v8, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 435
    :cond_7
    iget-boolean v8, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    if-eqz v8, :cond_d

    .line 436
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 437
    .restart local v6    # "scaledTextureWidth":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_c

    .line 438
    move v6, v7

    .line 439
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v5, v6, v8

    .line 463
    .restart local v5    # "scaledTextureHeight":F
    :goto_1
    const-string v8, "CAM_UI"

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

    .line 465
    if-eqz v3, :cond_8

    const/16 v8, 0xb4

    if-ne v3, v8, :cond_9

    :cond_8
    cmpl-float v8, v6, v5

    if-gtz v8, :cond_b

    :cond_9
    const/16 v8, 0x5a

    if-eq v3, v8, :cond_a

    const/16 v8, 0x10e

    if-ne v3, v8, :cond_11

    :cond_a
    cmpg-float v8, v6, v5

    if-gez v8, :cond_11

    .line 468
    :cond_b
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v8, v5

    float-to-int v9, v6

    const/16 v10, 0x11

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 474
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    iget v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 475
    const/16 v8, 0x31

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 476
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 441
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    :cond_c
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 444
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_d
    cmpl-float v8, v7, v0

    if-lez v8, :cond_f

    .line 445
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_e

    .line 446
    move v6, v7

    .line 447
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 449
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_e
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 450
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 453
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_f
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v8, v7

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_10

    .line 454
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v6, v0, v8

    .line 455
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_1

    .line 457
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_10
    move v6, v7

    .line 458
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_1

    .line 471
    :cond_11
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v8, v6

    float-to-int v9, v5

    const/16 v10, 0x11

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_2

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 826
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->handleBackKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    goto :goto_0

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 838
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->onCaptureCancelled()V

    goto :goto_0

    .line 840
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 844
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    goto :goto_0

    .line 847
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 6
    .param p1, "prefGroup"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "prefs"    # Lcom/android/camera/ComboPreferences;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    .param p5, "makeupListener"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 554
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-nez v0, :cond_1

    .line 559
    new-instance v0, Lcom/android/camera/PhotoMenu;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0, p5}, Lcom/android/camera/PhotoMenu;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 560
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p4}, Lcom/android/camera/PhotoMenu;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    .line 565
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_2

    .line 566
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 567
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_3

    .line 572
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 573
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setGestures(Lcom/android/camera/PreviewGestures;)V

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setPhotoMenu(Lcom/android/camera/PhotoMenu;)V

    .line 577
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 579
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 581
    invoke-virtual {p0, p3}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 582
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 583
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 584
    return-void
.end method

.method public onDisplayChanged()V
    .locals 2

    .prologue
    .line 1449
    const-string v0, "CAM_UI"

    const-string v1, "Device flip detected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 1451
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->updateCameraOrientation()V

    .line 1452
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1445
    :goto_0
    return-void

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    goto :goto_0
.end method

.method public onFocusFailed(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1409
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    .line 1410
    :cond_0
    return-void
.end method

.method public onFocusStarted()V
    .locals 1

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1397
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    .line 1398
    :cond_0
    return-void
.end method

.method public onFocusSucceeded(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 1402
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1403
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    .line 1404
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 1345
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 1346
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1351
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    .line 1352
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    .line 1355
    :cond_2
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 1193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1194
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1200
    :cond_1
    return-void
.end method

.method public onPieMoved(II)V
    .locals 4
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 1204
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->getBokehFocusSize()Landroid/util/Size;

    move-result-object v0

    .line 1206
    .local v0, "bokehCircle":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le p2, v2, :cond_1

    .line 1207
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 1211
    .local v1, "y":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setX(F)V

    .line 1212
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setY(F)V

    .line 1213
    iget-boolean v2, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 1214
    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1217
    :cond_0
    return-void

    .line 1209
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v1, p2, v2

    .restart local v1    # "y":I
    goto :goto_0
.end method

.method public onPieOpened(II)V
    .locals 3
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    const/4 v2, 0x0

    .line 1180
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1181
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1186
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1189
    :cond_1
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 4
    .param p1, "previewFocused"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    if-eqz p1, :cond_5

    .line 853
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUI()V

    .line 857
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 858
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 865
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_7

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez p1, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 870
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI;->setShowMenu(Z)V

    .line 871
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 872
    :cond_4
    return-void

    .line 855
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 858
    goto :goto_1

    .line 865
    :cond_7
    const/16 v0, 0x8

    goto :goto_2

    :cond_8
    move v1, v2

    .line 868
    goto :goto_3
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1055
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/PhotoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 823
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1423
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1424
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1427
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1429
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1434
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1436
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-nez v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1415
    :cond_0
    return-void
.end method

.method public pressShutterButton()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1145
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1146
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_0
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 1363
    return-void
.end method

.method public removeLevel2()V
    .locals 3

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 957
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->removeView(Landroid/view/View;)V

    .line 959
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public removeSceneModeMenu()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1046
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->cleanupListview()V

    .line 1049
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1420
    :cond_0
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1029
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1031
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1033
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1025
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 5
    .param p1, "ratio"    # F

    .prologue
    const/4 v4, 0x1

    .line 378
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 380
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 381
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_1

    .line 383
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 386
    :cond_1
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio() ratio["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mAspectRatio["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 388
    iput-boolean v4, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    .line 389
    iput p1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI;->layoutPreview(F)V

    .line 393
    return-void
.end method

.method public setBokehRenderDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehDegree(I)V

    .line 1243
    :cond_0
    return-void
.end method

.method public setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 807
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1116
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    if-eq v0, p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 1117
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isPreviewMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1118
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1119
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->addModeBack()V

    .line 1121
    :cond_2
    iput p1, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    .line 1122
    return-void
.end method

.method public setDownFactor(I)V
    .locals 0
    .param p1, "factor"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    .line 355
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 1392
    return-void
.end method

.method public setMakeupMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    .line 888
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 8
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1463
    iput p1, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    .line 1464
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 1465
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    if-eqz v6, :cond_0

    .line 1466
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setOrientation(IZ)V

    .line 1468
    :cond_0
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    if-eqz v6, :cond_1

    .line 1469
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/BokehLayout;->setOrientation(IZ)V

    .line 1471
    :cond_1
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_2

    .line 1472
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1473
    :cond_2
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_3

    .line 1474
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1475
    :cond_3
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    .line 1476
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1477
    .local v4, "vg":Landroid/view/ViewGroup;
    if-eqz v4, :cond_4

    .line 1478
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "vg":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 1479
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    :cond_4
    if-eqz v4, :cond_5

    .line 1480
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1481
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1482
    .local v1, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1480
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1486
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_8

    .line 1487
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1488
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_6

    .line 1489
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_8

    .line 1490
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1491
    .restart local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1489
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1494
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1495
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    if-eqz v4, :cond_8

    .line 1496
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_8

    .line 1497
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1498
    .local v3, "vewiGroup":Landroid/view/ViewGroup;
    instance-of v6, v3, Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_7

    move-object v1, v3

    .line 1499
    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1500
    .restart local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1496
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1507
    .end local v0    # "i":I
    .end local v3    # "vewiGroup":Landroid/view/ViewGroup;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v6, :cond_9

    .line 1508
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1509
    :cond_9
    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 1510
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v6, :cond_a

    .line 1511
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/FaceView;->setDisplayRotation(I)V

    .line 1513
    :cond_a
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v6, :cond_b

    .line 1514
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/ZoomRenderer;->setOrientation(I)V

    .line 1516
    :cond_b
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_c

    .line 1517
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .line 1518
    .local v2, "v":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1520
    .end local v2    # "v":Lcom/android/camera/ui/RotateImageView;
    :cond_c
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    return-void
.end method

.method public setPreviewMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 880
    return-void
.end method

.method public setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .line 507
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1247
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 721
    return-void
.end method

.method public setlocationy(I)V
    .locals 1
    .param p1, "my"    # I

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BokehLayout;->setSizeY(I)V

    .line 1625
    return-void
.end method

.method protected showCapturedImageForReview([BIZ)V
    .locals 4
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "mirror"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1082
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideCameraSettings()V

    .line 1083
    new-instance v0, Lcom/android/camera/PhotoUI$DecodeImageForReview;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/PhotoUI$DecodeImageForReview;-><init>(Lcom/android/camera/PhotoUI;[BIZ)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 1084
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1085
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v3}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1088
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1090
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoMenu;->hideTopMenu(Z)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 1093
    return-void
.end method

.method public showFirstTimeHelp()V
    .locals 5

    .prologue
    .line 1536
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1537
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "help_menu"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1538
    .local v1, "isMenuShown":Z
    if-nez v1, :cond_0

    .line 1539
    iget v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v4, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/PhotoUI;->showFirstTimeHelp(II)V

    .line 1540
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1541
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "help_menu"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1544
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showPopup(Landroid/widget/ListView;IZ)V
    .locals 9
    .param p1, "popup"    # Landroid/widget/ListView;
    .param p2, "level"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 894
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 895
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 896
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v5, :cond_0

    .line 897
    new-instance v5, Lcom/android/camera/ui/RotateLayout;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 898
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    .line 899
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v6, -0x2

    const/16 v7, 0x33

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 907
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 910
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 911
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 913
    :cond_1
    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    .line 914
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v5, :cond_2

    .line 915
    new-instance v5, Lcom/android/camera/ui/RotateLayout;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 916
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 918
    :cond_2
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    .line 919
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v6, -0x2

    const/16 v7, 0x33

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 927
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget v5, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_a

    :cond_3
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 928
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    .local v2, "screenHeight":I
    :goto_2
    move-object v5, p1

    .line 929
    check-cast v5, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v5}, Lcom/android/camera/ui/ListSubMenu;->getPreCalculatedHeight()I

    move-result v0

    .local v0, "height":I
    move-object v5, p1

    .line 930
    check-cast v5, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v5}, Lcom/android/camera/ui/ListSubMenu;->getYBase()I

    move-result v4

    .line 931
    .local v4, "yBase":I
    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 932
    .local v3, "y":I
    add-int v5, v4, v0

    if-le v5, v2, :cond_4

    .line 933
    const/4 v5, 0x0

    sub-int v6, v2, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 934
    :cond_4
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    .line 935
    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 940
    :goto_3
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 943
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 945
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "screenHeight":I
    .end local v3    # "y":I
    .end local v4    # "yBase":I
    :cond_5
    if-eqz p3, :cond_c

    .line 946
    const/4 v5, 0x1

    if-ne p2, v5, :cond_6

    .line 947
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    sget v7, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/PhotoMenu;->animateSlideIn(Landroid/view/View;IZ)V

    .line 948
    :cond_6
    const/4 v5, 0x2

    if-ne p2, v5, :cond_7

    .line 949
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v5, p1}, Lcom/android/camera/PhotoMenu;->animateFadeIn(Landroid/widget/ListView;)V

    .line 952
    :cond_7
    :goto_4
    return-void

    .line 903
    :cond_8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v6, -0x2

    const/16 v7, 0x35

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 923
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v6, -0x2

    const/16 v7, 0x35

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    .line 928
    :cond_a
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_2

    .line 937
    .restart local v0    # "height":I
    .restart local v2    # "screenHeight":I
    .restart local v3    # "y":I
    .restart local v4    # "yBase":I
    :cond_b
    const/4 v5, 0x0

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 951
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "screenHeight":I
    .end local v3    # "y":I
    .end local v4    # "yBase":I
    :cond_c
    const v5, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setAlpha(F)V

    goto :goto_4
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 4
    .param p1, "popup"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 962
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 964
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 965
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    .line 966
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 967
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 968
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 969
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/android/camera/PhotoUI$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$10;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 983
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 985
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 986
    return-void
.end method

.method public showPreferencesToast()V
    .locals 3

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    if-nez v1, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    .line 1318
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1319
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    return-void
.end method

.method public showRefocusDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1547
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1548
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "refocus-prompt"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1549
    .local v3, "prompt":I
    if-ne v3, v5, :cond_0

    .line 1550
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0231

    .line 1551
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0232

    .line 1552
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e03c0

    const/4 v6, 0x0

    .line 1553
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1554
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1555
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1556
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "refocus-prompt"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1557
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1560
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showRefocusToast(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraControls;->showRefocusToast(Z)V

    .line 593
    return-void
.end method

.method public showRemainingPhotoCnt()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showRemainingPhotoCnt()V

    .line 689
    return-void
.end method

.method public showSurfaceView()V
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1259
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 717
    return-void
.end method

.method public showText(I)V
    .locals 2
    .param p1, "mShow"    # I

    .prologue
    const/16 v1, 0x8

    .line 1592
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1593
    packed-switch p1, :pswitch_data_0

    .line 1617
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1596
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BokehLayout;->setVisibility(I)V

    goto :goto_0

    .line 1599
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BokehLayout;->setVisibility(I)V

    goto :goto_0

    .line 1602
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1605
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1608
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1611
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1614
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public showUI()V
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 703
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    goto :goto_0
.end method

.method public showUIAfterCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1568
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideCameraControls(Z)V

    .line 1569
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1570
    return-void
.end method

.method public showWaitingProgress(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1585
    :cond_0
    return-void

    .line 1583
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startCountDown(IZ)V
    .locals 1
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initializeCountDown()V

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->startCountDown(IZ)V

    .line 1284
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUIWhileCountDown()V

    .line 1285
    return-void
.end method

.method public startSelfieFlash()V
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->bringToFront()V

    .line 1291
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->open()V

    .line 1292
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoUI;->setScreenBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    .line 1293
    return-void
.end method

.method public stopSelfieFlash()V
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->close()V

    .line 1299
    iget v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1300
    iget v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoUI;->setScreenBrightness(F)F

    .line 1301
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 512
    const-string v1, "CAM_UI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceChanged: width ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 514
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 515
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/PhotoController;->onPreviewRectChanged(Landroid/graphics/Rect;)V

    .line 517
    iget-boolean v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    if-nez v1, :cond_0

    .line 518
    iget v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoUI;->layoutPreview(F)V

    .line 521
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 525
    const-string v0, "CAM_UI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 527
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIReady()V

    .line 528
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    .line 532
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 536
    const-string v0, "CAM_UI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 538
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIDestroyed()V

    .line 539
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->tryToCloseSubList()V

    .line 1525
    :cond_0
    return-void
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p3, "prefs"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 785
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/OnScreenIndicators;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 787
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 788
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v5

    .line 787
    invoke-virtual {v4, p1, v5}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(Landroid/hardware/Camera$Parameters;I)V

    .line 789
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 790
    const/4 v3, -0x1

    .line 791
    .local v3, "wbIndex":I
    const-string v2, "auto"

    .line 792
    .local v2, "wb":Ljava/lang/String;
    const-string v4, "auto"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 793
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    .line 795
    :cond_2
    const-string v4, "pref_camera_whitebalance_key"

    invoke-virtual {p2, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 796
    .local v1, "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_3

    .line 797
    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 801
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-gez v3, :cond_4

    const/4 v3, 0x2

    .end local v3    # "wbIndex":I
    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/camera/OnScreenIndicators;->updateWBIndicator(I)V

    .line 802
    const-string v4, "pref_camera_recordlocation_key"

    invoke-static {p3, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 803
    .local v0, "location":Z
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v4, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    goto :goto_0
.end method

.method public updateRemainingPhotos(I)V
    .locals 1
    .param p1, "remaining"    # I

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraControls;->updateRemainingPhotos(I)V

    .line 1460
    return-void
.end method
