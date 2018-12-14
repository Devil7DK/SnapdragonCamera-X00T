.class public Lcom/android/camera/ui/OneUICameraControls;
.super Lcom/android/camera/ui/RotatableLayout;
.source "OneUICameraControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;
    }
.end annotation


# static fields
.field private static final HEIGHT_GRID:I = 0x7

.field private static final HIGH_REMAINING_PHOTOS:I = 0xf4240

.field private static final LOW_REMAINING_PHOTOS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CAM_Controls"

.field private static final WIDTH_GRID:I = 0x5

.field private static mBottom:I

.field private static mTop:I


# instance fields
.field private mBottomLargeSize:I

.field private mBottomSmallSize:I

.field private mCancelButton:Landroid/view/View;

.field private mCurrentRemaining:I

.field private mExitBestPhotpMode:Landroid/view/View;

.field private mExposureRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mExposureText:Landroid/widget/TextView;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFlashButton:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mHeight:I

.field private mHideRemainingPhoto:Z

.field private mIntentMode:I

.field private mIsVideoMode:Z

.field private mIsoRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mIsoText:Landroid/widget/TextView;

.field private mMakeupSeekBar:Landroid/view/View;

.field private mMakeupSeekBarHighText:Landroid/view/View;

.field private mMakeupSeekBarLayout:Landroid/view/View;

.field private mMakeupSeekBarLowText:Landroid/view/View;

.field private mManualRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualText:Landroid/widget/TextView;

.field private mMute:Landroid/view/View;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseButton:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mProMode:Lcom/android/camera/ui/ProMode;

.field private mProModeCloseButton:Landroid/view/View;

.field private mProModeLayout:Landroid/view/ViewGroup;

.field private mProModeOn:Z

.field private mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

.field private mRemainingPhotos:Landroid/widget/LinearLayout;

.field private mRemainingPhotosText:Landroid/widget/TextView;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mShutter:Landroid/view/View;

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mVideoShutter:Landroid/view/View;

.field private mViews:[Landroid/view/View;

.field private mVisible:Z

.field private mWhiteBalanceRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mWhiteBalanceText:Landroid/widget/TextView;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    .line 81
    sput v0, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/OneUICameraControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mHideRemainingPhoto:Z

    .line 77
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mCurrentRemaining:I

    .line 90
    iput-boolean v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    .line 94
    iput v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    .line 100
    iput-boolean v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    .line 108
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/OneUICameraControls;->setWillNotDraw(Z)V

    .line 111
    new-instance v2, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;-><init>(Lcom/android/camera/ui/OneUICameraControls;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/OneUICameraControls;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/OneUICameraControls;->setClipChildren(Z)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/OneUICameraControls;->setMeasureAllChildren(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    const/high16 v2, 0x428c0000    # 70.0f

    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    .line 119
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    .line 120
    iput-boolean v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    .line 122
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 123
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 124
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 125
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/OneUICameraControls;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->resetProModeIcons()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    return-object v0
.end method

.method private initializeProMode(Z)V
    .locals 3
    .param p1, "promode"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 577
    if-nez p1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProMode;->setMode(I)V

    .line 579
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v2, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0
.end method

.method private layoutRemaingPhotos()V
    .locals 14

    .prologue
    .line 443
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 444
    .local v4, "rl":I
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 445
    .local v6, "rt":I
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 446
    .local v5, "rr":I
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 447
    .local v3, "rb":I
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    .line 448
    .local v8, "w":I
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 449
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0089

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 451
    .local v2, "m":I
    add-int v9, v4, v5

    div-int/lit8 v1, v9, 0x2

    .line 452
    .local v1, "hc":I
    add-int v9, v6, v3

    div-int/lit8 v9, v9, 0x2

    sub-int v7, v9, v2

    .line 453
    .local v7, "vc":I
    iget v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_1

    .line 454
    :cond_0
    div-int/lit8 v9, v8, 0x2

    sub-int/2addr v7, v9

    .line 456
    :cond_1
    div-int/lit8 v9, v8, 0x2

    if-ge v1, v9, :cond_2

    .line 457
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    div-int/lit8 v11, v0, 0x2

    sub-int v11, v7, v11

    div-int/lit8 v12, v0, 0x2

    add-int/2addr v12, v7

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 461
    :goto_0
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 462
    return-void

    .line 459
    :cond_2
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v8, 0x2

    sub-int v10, v1, v10

    div-int/lit8 v11, v0, 0x2

    sub-int v11, v7, v11

    div-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v1

    div-int/lit8 v13, v0, 0x2

    add-int/2addr v13, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0
.end method

.method private layoutToast(Landroid/view/View;III)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 372
    .local v13, "tw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 374
    .local v12, "th":I
    sparse-switch p4, :sswitch_data_0

    .line 399
    div-int/lit8 v0, p2, 0x5

    div-int/lit8 v9, v0, 0x4

    .line 400
    .local v9, "l":I
    div-int/lit8 v0, p3, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x4017000000000000L    # 5.75

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 401
    .local v7, "b":I
    add-int v10, v9, v13

    .line 402
    .local v10, "r":I
    sub-int v11, v7, v12

    .line 403
    .local v11, "t":I
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    const/4 v1, 0x0

    int-to-float v2, v12

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    int-to-float v4, v12

    const/4 v5, 0x0

    mul-int/lit8 v6, v12, 0x3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-virtual {v0, v9, v11, v10, v7}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->layout(IIII)V

    .line 407
    return-void

    .line 376
    .end local v7    # "b":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_0
    div-int/lit8 v0, p3, 0x5

    int-to-double v0, v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 377
    .local v8, "c":I
    div-int/lit8 v0, v12, 0x2

    sub-int v11, v8, v0

    .line 378
    .restart local v11    # "t":I
    div-int/lit8 v0, v12, 0x2

    add-int v7, v8, v0

    .line 379
    .restart local v7    # "b":I
    div-int/lit8 v0, p2, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x4017000000000000L    # 5.75

    mul-double/2addr v0, v2

    double-to-int v10, v0

    .line 380
    .restart local v10    # "r":I
    sub-int v9, v10, v13

    .line 381
    .restart local v9    # "l":I
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    int-to-float v1, v13

    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v12, 0x2

    add-int/2addr v3, v13

    int-to-float v3, v3

    int-to-float v4, v12

    int-to-float v5, v13

    int-to-float v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto :goto_0

    .line 384
    .end local v7    # "b":I
    .end local v8    # "c":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_1
    div-int/lit8 v0, p3, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v11, v0

    .line 385
    .restart local v11    # "t":I
    add-int v7, v11, v12

    .line 386
    .restart local v7    # "b":I
    div-int/lit8 v0, p2, 0x5

    int-to-double v0, v0

    const-wide/high16 v2, 0x4013000000000000L    # 4.75

    mul-double/2addr v0, v2

    double-to-int v10, v0

    .line 387
    .restart local v10    # "r":I
    sub-int v9, v10, v13

    .line 388
    .restart local v9    # "l":I
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    div-int/lit8 v1, v12, 0x2

    sub-int v1, v13, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v13

    neg-int v6, v12

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto :goto_0

    .line 391
    .end local v7    # "b":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_2
    div-int/lit8 v0, p3, 0x5

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 392
    .restart local v8    # "c":I
    div-int/lit8 v0, v12, 0x2

    sub-int v11, v8, v0

    .line 393
    .restart local v11    # "t":I
    div-int/lit8 v0, v12, 0x2

    add-int v7, v8, v0

    .line 394
    .restart local v7    # "b":I
    div-int/lit8 v0, p2, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v9, v0

    .line 395
    .restart local v9    # "l":I
    add-int v10, v9, v13

    .line 396
    .restart local v10    # "r":I
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    div-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    neg-int v5, v12

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private resetProModeIcons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 566
    return-void
.end method

.method private setBottomButtionSize(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 365
    .local v0, "layout":Landroid/widget/FrameLayout$LayoutParams;
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 366
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-void
.end method

.method private setLocation(II)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getUnifiedRotation()I

    move-result v0

    .line 330
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-direct {p0, v1, v4, v7}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 331
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v4, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 332
    iget-boolean v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mMute:Landroid/view/View;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, v1, v4, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 335
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    invoke-direct {p0, v1, v4, v6}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 336
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    const v2, 0x4049999a    # 3.15f

    invoke-direct {p0, v1, v3, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 337
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {p0, v1, v3, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 338
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    invoke-direct {p0, v1, v3, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 339
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    invoke-direct {p0, v1, v3, v6}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLayout:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v7, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocationCustomBottom(Landroid/view/View;FF)V

    .line 358
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    invoke-direct {p0, v1, v3, v6}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 360
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/ui/OneUICameraControls;->layoutToast(Landroid/view/View;III)V

    .line 361
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 342
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, v1, v4, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 343
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    invoke-direct {p0, v1, v4, v6}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 344
    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    if-ne v1, v4, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    invoke-direct {p0, v1, v3, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 346
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {p0, v1, v3, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 355
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    invoke-direct {p0, v1, v3, v6}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    goto :goto_0

    .line 347
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 348
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    invoke-direct {p0, v1, v3, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 349
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {p0, v1, v3, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    goto :goto_1

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    invoke-direct {p0, v1, v3, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 352
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-direct {p0, v1, v3, v7}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 353
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    const v2, 0x4049999a    # 3.15f

    invoke-direct {p0, v1, v3, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    goto :goto_1
.end method

.method private setLocation(Landroid/view/View;ZF)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "top"    # Z
    .param p3, "idx"    # F

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 306
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 307
    .local v1, "h":I
    if-eqz p2, :cond_1

    .line 308
    sget v3, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 312
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float v0, v3, v4

    .line 313
    .local v0, "bW":F
    mul-float v3, v0, p3

    int-to-float v4, v2

    sub-float v4, v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 310
    .end local v0    # "bW":F
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    goto :goto_1
.end method

.method private setLocationCustomBottom(Landroid/view/View;FF)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 321
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 322
    .local v2, "h":I
    iget v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v1, v4, 0x5

    .line 323
    .local v1, "bW":I
    iget v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    div-int/lit8 v0, v4, 0x6

    .line 324
    .local v0, "bH":I
    iget v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v5, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    mul-float/2addr v5, p3

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setY(F)V

    .line 325
    int-to-float v4, v1

    mul-float/2addr v4, p2

    invoke-virtual {p1, v4}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method

.method private setProModeParameters()V
    .locals 3

    .prologue
    .line 569
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 570
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    return-void
.end method


# virtual methods
.method public getIntentMode()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    return v0
.end method

.method public hideUI()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mViews:[Landroid/view/View;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 411
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 412
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    .line 415
    return-void
.end method

.method public isControlRegion(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 272
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v1, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getUnifiedRotation()I

    move-result v9

    .line 279
    .local v9, "rotation":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .local v10, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 280
    .local v8, "h":I
    sparse-switch v9, :sswitch_data_0

    .line 294
    int-to-float v3, v10

    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 295
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    .end local v8    # "h":I
    .end local v9    # "rotation":I
    .end local v10    # "w":I
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v8    # "h":I
    .restart local v9    # "rotation":I
    .restart local v10    # "w":I
    :sswitch_0
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v5, v10

    int-to-float v6, v8

    iget-object v7, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 286
    :sswitch_1
    int-to-float v3, v10

    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 290
    :sswitch_2
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 291
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v5, v10

    int-to-float v6, v8

    iget-object v7, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 143
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    .line 144
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    .line 145
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    .line 146
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    .line 147
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    .line 148
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    .line 149
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLowText:Landroid/view/View;

    .line 150
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarHighText:Landroid/view/View;

    .line 151
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    .line 152
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLayout:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 154
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    .line 155
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMute:Landroid/view/View;

    .line 156
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    .line 157
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    .line 158
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    .line 159
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    .line 160
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    .line 162
    const v0, 0x7f0d00ae

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    .line 163
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    .line 165
    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProMode;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ProMode;->initialize(Lcom/android/camera/ui/OneUICameraControls;)V

    .line 172
    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 173
    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 174
    const v0, 0x7f0d00b3

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 175
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$1;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$2;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$3;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$4;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mViews:[Landroid/view/View;

    .line 235
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    .line 237
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    .line 239
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->isSupportedStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->setProModeParameters()V

    .line 243
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 259
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/RotatableLayout;->onLayout(ZIIII)V

    .line 260
    sub-int/2addr p4, p2

    .line 261
    sub-int/2addr p5, p3

    .line 262
    const/4 p2, 0x0

    .line 263
    const/4 p3, 0x0

    .line 265
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(II)V

    .line 266
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->layoutRemaingPhotos()V

    .line 267
    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    invoke-direct {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->initializeProMode(Z)V

    .line 269
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/RotatableLayout;->onSizeChanged(IIII)V

    .line 249
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    .line 250
    iput p2, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->setProModeParameters()V

    .line 255
    return-void
.end method

.method public setIntentMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    .line 134
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 491
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    .line 492
    const/16 v3, 0xd

    new-array v1, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    aput-object v4, v1, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    aput-object v4, v1, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mMute:Landroid/view/View;

    aput-object v4, v1, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    aput-object v4, v1, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    aput-object v4, v1, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLowText:Landroid/view/View;

    aput-object v4, v1, v3

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarHighText:Landroid/view/View;

    aput-object v4, v1, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    aput-object v4, v1, v3

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    aput-object v4, v1, v3

    .line 498
    .local v1, "views":[Landroid/view/View;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 499
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 500
    check-cast v0, Lcom/android/camera/ui/Rotatable;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 498
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 504
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 505
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 506
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 507
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/ProMode;->setOrientation(I)V

    .line 508
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->layoutRemaingPhotos()V

    .line 509
    return-void
.end method

.method public setProMode(Z)V
    .locals 1
    .param p1, "promode"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    .line 556
    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    invoke-direct {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->initializeProMode(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProMode;->reinit()V

    .line 558
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->resetProModeIcons()V

    .line 559
    return-void
.end method

.method public setVideoMode(Z)V
    .locals 3
    .param p1, "videoMode"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    .line 427
    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    .line 440
    :goto_0
    return-void

    .line 431
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    goto :goto_0

    .line 433
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 434
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public showRefocusToast(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 484
    iget-object v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setVisibility(I)V

    .line 485
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mCurrentRemaining:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mHideRemainingPhoto:Z

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 484
    goto :goto_0

    :cond_2
    move v2, v1

    .line 486
    goto :goto_1
.end method

.method public showUI()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mViews:[Landroid/view/View;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 419
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    .line 423
    return-void
.end method

.method public updateProModeText(ILjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 589
    packed-switch p1, :pswitch_data_0

    .line 603
    :goto_0
    return-void

    .line 591
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 594
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 597
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 600
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateRemainingPhotos(I)V
    .locals 8
    .param p1, "remaining"    # I

    .prologue
    .line 465
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    sub-long v2, v4, v6

    .line 466
    .local v2, "remainingStorage":J
    if-gez p1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mHideRemainingPhoto:Z

    if-eqz v1, :cond_2

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCurrentRemaining:I

    .line 481
    return-void

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 470
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 469
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 472
    :cond_3
    const/16 v1, 0x14

    if-ge p1, v1, :cond_4

    .line 473
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v4, "<20 "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 474
    :cond_4
    const v1, 0xf4240

    if-lt p1, v1, :cond_5

    .line 475
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v4, ">1000000"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 477
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
