.class public Lcom/android/camera/WideAnglePanoramaUI;
.super Ljava/lang/Object;
.source "WideAnglePanoramaUI.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/WideAnglePanoramaUI$FlipBitmapDrawable;,
        Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_WidePanoramaUI"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/FrameLayout;

.field private mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mController:Lcom/android/camera/WideAnglePanoramaController;

.field private mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mOrientation:I

.field private mPanoFailedButton:Landroid/widget/Button;

.field private mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

.field private mPreviewBorder:Landroid/view/View;

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewLayout:Landroid/view/View;

.field private mPreviewYOffset:I

.field private mProgressAngle:[F

.field private mProgressDirectionMatrix:Landroid/graphics/Matrix;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewBackground:I

.field private mReviewControl:Landroid/view/ViewGroup;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mTextureView:Landroid/view/TextureView;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mWaitingDialog:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/WideAnglePanoramaController;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/WideAnglePanoramaController;
    .param p3, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 95
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    .line 117
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 118
    iput-object p2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    .line 119
    iput-object p3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    .line 121
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->createContentView()V

    .line 122
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 123
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 124
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    .line 127
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/WideAnglePanoramaUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaUI$1;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v2, Lcom/android/camera/WideAnglePanoramaUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaUI$2;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 145
    .local v0, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/WideAnglePanoramaUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/WideAnglePanoramaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/WideAnglePanoramaUI;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedButton:Landroid/widget/Button;

    return-object v0
.end method

.method private createContentView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 439
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    .line 440
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 441
    .local v1, "inflator":Landroid/view/LayoutInflater;
    const v2, 0x7f040026

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 443
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 444
    .local v0, "appRes":Landroid/content/res/Resources;
    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColor:I

    .line 445
    const v2, 0x7f0a0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewBackground:I

    .line 446
    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColorFast:I

    .line 448
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0033

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    .line 449
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewLayout:Landroid/view/View;

    .line 450
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0098

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    .line 451
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0095

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    .line 452
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    .line 453
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    .line 454
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0092

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 455
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 456
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 457
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 458
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 460
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0d008d

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    .line 462
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0091

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    .line 463
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0093

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    .line 464
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 465
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 466
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0094

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    .line 467
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    .line 469
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d001e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ShutterButton;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 470
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 471
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 473
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0072

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewBackground:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 478
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/camera/ui/CameraRootView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 479
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    .line 480
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 481
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 482
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraControls;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 483
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->setPanoramaPreviewView()V

    .line 485
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d009b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    .line 486
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d009c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    .line 487
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d00a1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedButton:Landroid/widget/Button;

    .line 488
    new-instance v2, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    .line 489
    invoke-direct {p0, v0}, Lcom/android/camera/WideAnglePanoramaUI;->setViews(Landroid/content/res/Resources;)V

    .line 490
    return-void
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 298
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 527
    return-void
.end method

.method private setPanoramaPreviewView()V
    .locals 18

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 364
    .local v8, "rotation":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 365
    .local v3, "display":Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 366
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 368
    iget v12, v9, Landroid/graphics/Point;->x:I

    .line 369
    .local v12, "width":I
    iget v5, v9, Landroid/graphics/Point;->y:I

    .line 370
    .local v5, "height":I
    const/4 v13, 0x0

    .line 371
    .local v13, "xOffset":I
    const/4 v14, 0x0

    .line 372
    .local v14, "yOffset":I
    move v11, v12

    .line 373
    .local v11, "w":I
    move v4, v5

    .line 375
    .local v4, "h":I
    mul-int/lit8 v15, v11, 0x4

    div-int/lit8 v4, v15, 0x3

    .line 376
    sub-int v15, v5, v4

    div-int/lit8 v14, v15, 0x2

    .line 378
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v6, "param":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v15, v6}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/TextureView;->setX(F)V

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    int-to-float v0, v14

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/TextureView;->setY(F)V

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v15, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setX(F)V

    .line 384
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    int-to-float v0, v14

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setY(F)V

    .line 385
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewYOffset:I

    .line 387
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewYOffset:I

    .line 388
    .local v10, "t":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v15}, Landroid/view/TextureView;->getBottom()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewYOffset:I

    move/from16 v16, v0

    sub-int v1, v15, v16

    .line 389
    .local v1, "b1":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v15}, Landroid/view/TextureView;->getRight()I

    move-result v7

    .line 390
    .local v7, "r":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v15}, Landroid/view/TextureView;->getBottom()I

    move-result v2

    .line 392
    .local v2, "b2":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 393
    return-void
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "appRes"    # Landroid/content/res/Resources;

    .prologue
    .line 493
    const v2, 0x7f0b0006

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 495
    .local v1, "weight":I
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0099

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 496
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 497
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 498
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 499
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001e

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 501
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d009a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/WideAnglePanoramaUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaUI$3;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-void
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 519
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

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

.method public dismissAllDialogs()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->dismissAll()V

    .line 436
    return-void
.end method

.method public flipPreviewIfNeeded()V
    .locals 5

    .prologue
    .line 531
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v3}, Lcom/android/camera/WideAnglePanoramaController;->getCameraOrientation()I

    move-result v0

    .line 533
    .local v0, "cameraOrientation":I
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 535
    .local v1, "displayRotation":I
    sub-int v3, v0, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 536
    .local v2, "rotation":I
    const/16 v3, 0xb4

    if-lt v2, v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setRotation(F)V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_0
.end method

.method public getPreviewAreaSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    .line 304
    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 168
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 169
    return-void
.end method

.method public hideSwitcherPopup()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 616
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideUI()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideSwitcher()V

    .line 173
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setVisibility(I)V

    .line 174
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 551
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "threadRunning"    # Z

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "lowResReview":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    .line 347
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 349
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 350
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 351
    const v2, 0x7f040025

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 353
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 354
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/WideAnglePanoramaUI;->setViews(Landroid/content/res/Resources;)V

    .line 355
    if-eqz p2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_1
    return-void
.end method

.method public onDisplayChanged()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 546
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->flipPreviewIfNeeded()V

    .line 547
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "oldl"    # I
    .param p7, "oldt"    # I
    .param p8, "oldr"    # I
    .param p9, "oldb"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/camera/WideAnglePanoramaController;->onPreviewUILayoutChange(IIII)V

    .line 422
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 0
    .param p1, "previewFocused"    # Z

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showUI()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideUI()V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->onShutterButtonClick()V

    .line 412
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 407
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public onStartCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideSwitcher()V

    .line 150
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/android/camera/WideAnglePanoramaUI;->showDirectionIndicators(I)V

    .line 153
    return-void
.end method

.method public onStopCapture()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideTooFastIndication()V

    .line 163
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideDirectionIndicators()V

    .line 164
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 272
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->onPreviewUIReady()V

    .line 273
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 274
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->onPreviewUIDestroyed()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 285
    const-string v0, "CAM_WidePanoramaUI"

    const-string v1, "surfaceTexture is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 279
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/16 v1, 0x8

    .line 292
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 555
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 311
    return-void
.end method

.method public resetCaptureProgress()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 208
    return-void
.end method

.method public resetSavingProgress()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 397
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 398
    return-void
.end method

.method public saveFinalMosaic(Landroid/graphics/Bitmap;I)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 314
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 315
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 316
    .local v5, "rotateMatrix":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 317
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 322
    .end local v5    # "rotateMatrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->requestLayout()V

    .line 330
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 331
    return-void
.end method

.method public setCaptureProgressOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 204
    return-void
.end method

.method public setMaxCaptureProgress(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 212
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 28
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 622
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/WideAnglePanoramaUI;->mOrientation:I

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    const v23, 0x7f0d008f

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 634
    .local v7, "dummy":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v16

    .line 635
    .local v16, "t":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 636
    .local v3, "b1":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v15

    .line 637
    .local v15, "r":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 638
    .local v4, "b2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    const v23, 0x7f0d0090

    .line 639
    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 640
    .local v14, "progressLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v22

    const/16 v23, 0x0

    .line 641
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v13, v22, v23

    .line 643
    .local v13, "pivotY":I
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v22, 0x0

    div-int/lit8 v23, v15, 0x2

    aput v23, v20, v22

    const/16 v22, 0x1

    div-int/lit8 v23, v15, 0xa

    aput v23, v20, v22

    const/16 v22, 0x2

    mul-int/lit8 v23, v15, 0x9

    div-int/lit8 v23, v23, 0xa

    aput v23, v20, v22

    const/16 v22, 0x3

    div-int/lit8 v23, v15, 0x2

    aput v23, v20, v22

    .line 644
    .local v20, "x":[I
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    div-int/lit8 v23, v16, 0x2

    add-int v23, v23, v13

    aput v23, v21, v22

    const/16 v22, 0x1

    add-int v23, v16, v3

    div-int/lit8 v23, v23, 0x2

    aput v23, v21, v22

    const/16 v22, 0x2

    add-int v23, v16, v3

    div-int/lit8 v23, v23, 0x2

    aput v23, v21, v22

    const/16 v22, 0x3

    add-int v23, v3, v13

    aput v23, v21, v22

    .line 648
    .local v21, "y":[I
    sparse-switch p1, :sswitch_data_0

    .line 665
    const/4 v9, 0x0

    .line 666
    .local v9, "idx1":I
    const/4 v10, 0x3

    .line 667
    .local v10, "idx2":I
    const/16 v8, 0x51

    .line 671
    .local v8, "g":I
    :goto_0
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    move-object/from16 v22, v0

    .line 672
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    aput-object v22, v18, v23

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const v24, 0x7f0d0096

    .line 673
    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v18, v22

    .line 675
    .local v18, "views1":[Landroid/view/View;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    aget-object v17, v18, v22

    .line 676
    .local v17, "v":Landroid/view/View;
    aget v24, v20, v9

    const/16 v25, 0x0

    aget v25, v20, v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 677
    aget v24, v21, v9

    const/16 v25, 0x0

    aget v25, v21, v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 679
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 681
    :try_start_0
    const-string v24, "android.view.View"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 682
    .local v6, "cls":Ljava/lang/Class;
    const-string v24, "setTranslationZ"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 683
    .local v12, "method":Ljava/lang/reflect/Method;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v6    # "cls":Ljava/lang/Class;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_2
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 675
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 650
    .end local v8    # "g":I
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    .end local v17    # "v":Landroid/view/View;
    .end local v18    # "views1":[Landroid/view/View;
    :sswitch_0
    const/4 v9, 0x1

    .line 651
    .restart local v9    # "idx1":I
    const/4 v10, 0x2

    .line 652
    .restart local v10    # "idx2":I
    const/16 v8, 0x35

    .line 653
    .restart local v8    # "g":I
    goto/16 :goto_0

    .line 655
    .end local v8    # "g":I
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    :sswitch_1
    const/4 v9, 0x3

    .line 656
    .restart local v9    # "idx1":I
    const/4 v10, 0x0

    .line 657
    .restart local v10    # "idx2":I
    const/16 v8, 0x51

    .line 658
    .restart local v8    # "g":I
    goto/16 :goto_0

    .line 660
    .end local v8    # "g":I
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    :sswitch_2
    const/4 v9, 0x2

    .line 661
    .restart local v9    # "idx1":I
    const/4 v10, 0x1

    .line 662
    .restart local v10    # "idx2":I
    const/16 v8, 0x35

    .line 663
    .restart local v8    # "g":I
    goto/16 :goto_0

    .line 691
    .restart local v18    # "views1":[Landroid/view/View;
    :cond_1
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    aput-object v14, v19, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aput-object v23, v19, v22

    .line 692
    .local v19, "views2":[Landroid/view/View;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v17, v19, v22

    .line 693
    .restart local v17    # "v":Landroid/view/View;
    div-int/lit8 v24, v15, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 694
    int-to-float v0, v13

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 695
    aget v24, v20, v10

    const/16 v25, 0x3

    aget v25, v20, v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 696
    aget v24, v21, v10

    const/16 v25, 0x3

    aget v25, v21, v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 697
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 692
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 700
    .end local v17    # "v":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    const v23, 0x7f0d009a

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 701
    .local v5, "button":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 702
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 703
    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    move-object/from16 v22, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/camera/ui/RotateLayout;->setRotation(F)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    move-object/from16 v22, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/camera/ui/RotateLayout;->setRotation(F)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setRotation(F)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setRotation(F)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 709
    invoke-static/range {p1 .. p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 710
    return-void

    .line 684
    .end local v5    # "button":Landroid/view/View;
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v19    # "views2":[Landroid/view/View;
    .restart local v17    # "v":Landroid/view/View;
    :catch_0
    move-exception v24

    goto/16 :goto_2

    .line 648
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setProgressOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 245
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 246
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 199
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "failedString"    # Ljava/lang/String;
    .param p3, "OKString"    # Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->showAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public showCaptureProgress()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 216
    return-void
.end method

.method public showDirectionIndicators(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showFinalMosaic()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 336
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public showPreviewCover()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    return-void
.end method

.method public showPreviewUI()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showUI()V

    .line 158
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 195
    return-void
.end method

.method public showUI()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showSwitcher()V

    .line 178
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public updateCaptureProgress(FFFFF)V
    .locals 5
    .param p1, "panningRateXInDegree"    # F
    .param p2, "panningRateYInDegree"    # F
    .param p3, "progressHorizontalAngle"    # F
    .param p4, "progressVerticalAngle"    # F
    .param p5, "maxPanningSpeed"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p5

    if-gtz v1, :cond_0

    .line 224
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p5

    if-lez v1, :cond_1

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showTooFastIndication()V

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aput p3, v1, v3

    .line 233
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aput p4, v1, v4

    .line 234
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 236
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v1, v1, v3

    .line 237
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v1, v1, v3

    float-to-int v0, v1

    .line 240
    .local v0, "angleInMajorDirection":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 241
    return-void

    .line 227
    .end local v0    # "angleInMajorDirection":I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideTooFastIndication()V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v1, v1, v4

    float-to-int v0, v1

    goto :goto_1
.end method

.method public updateSavingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 402
    return-void
.end method
