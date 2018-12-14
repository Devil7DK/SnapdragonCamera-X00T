.class public Lcom/android/camera/ui/CameraControls;
.super Lcom/android/camera/ui/RotatableLayout;
.source "CameraControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraControls$ArrowTextView;
    }
.end annotation


# static fields
.field private static final ANIME_DURATION:I = 0x12c

.field private static final BOKEH_INDEX:I = 0xc

.field private static final EXIT_PANORAMA_INDEX:I = 0xb

.field private static final FILTER_MODE_INDEX:I = 0x3

.field private static final FRONT_BACK_INDEX:I = 0x0

.field private static final HDR_INDEX:I = 0x1

.field private static final HEIGHT_GRID:I = 0x7

.field private static final HIGH_REMAINING_PHOTOS:I = 0xf4240

.field private static final INDICATOR_INDEX:I = 0x8

.field private static final LOW_REMAINING_PHOTOS:I = 0x14

.field private static final MAX_INDEX:I = 0xd

.field private static final MENU_INDEX:I = 0x4

.field private static final MUTE_INDEX:I = 0x9

.field private static final PREVIEW_INDEX:I = 0x7

.field private static final SCENE_MODE_INDEX:I = 0x2

.field private static final SHUTTER_INDEX:I = 0x6

.field private static final SWITCHER_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CAM_Controls"

.field private static final TS_MAKEUP_INDEX:I = 0x1

.field private static final VIDEO_SHUTTER_INDEX:I = 0xa

.field private static WIDTH_GRID:I

.field private static isAnimating:Z

.field private static mBottomMargin:I

.field private static mTopMargin:I


# instance fields
.field inlistener:Landroid/animation/Animator$AnimatorListener;

.field private mBackgroundView:Landroid/view/View;

.field private mBokehSwitcher:Landroid/view/View;

.field private mCurrentRemaining:I

.field private mExitPanorama:Landroid/view/View;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mHdrSwitcher:Landroid/view/View;

.field private mHideRemainingPhoto:Z

.field private mIndicators:Landroid/view/View;

.field private mIsBokehMode:Z

.field private mLocSet:Z

.field private mLocX:[[F

.field private mLocY:[[F

.field private mMenu:Landroid/view/View;

.field private mMute:Landroid/view/View;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreview:Landroid/view/View;

.field private mPreviewRatio:I

.field private mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

.field private mRemainingPhotos:Landroid/widget/LinearLayout;

.field private mRemainingPhotosText:Landroid/widget/TextView;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mShutter:Landroid/view/View;

.field private mSize:I

.field private mSwitcher:Landroid/view/View;

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mVideoShutter:Landroid/view/View;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field outlistener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 77
    sput-boolean v1, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 105
    sput v1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    .line 106
    sput v1, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CameraControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    .line 96
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    .line 97
    iput-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mLocSet:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    .line 113
    iput-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    .line 115
    new-instance v0, Lcom/android/camera/ui/CameraControls$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraControls$1;-><init>(Lcom/android/camera/ui/CameraControls;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->outlistener:Landroid/animation/Animator$AnimatorListener;

    .line 184
    new-instance v0, Lcom/android/camera/ui/CameraControls$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraControls$2;-><init>(Lcom/android/camera/ui/CameraControls;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->inlistener:Landroid/animation/Animator$AnimatorListener;

    .line 212
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraControls;->setWillNotDraw(Z)V

    .line 215
    new-instance v0, Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/CameraControls$ArrowTextView;-><init>(Lcom/android/camera/ui/CameraControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraControls;->setClipChildren(Z)V

    .line 219
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraControls;->setMeasureAllChildren(Z)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraControls;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/CameraControls;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    return-object v0
.end method

.method private adjustBackground()V
    .locals 5

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/4 v3, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 1021
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationX(F)V

    .line 1023
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationY(F)V

    .line 1027
    sparse-switch v0, :sswitch_data_0

    .line 1037
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const v2, 0x7f020197

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1038
    return-void

    .line 1029
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 1032
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 1027
    nop

    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "orientation"    # I
    .param p7, "rotation"    # I
    .param p8, "result"    # Landroid/graphics/Rect;
    .param p9, "idx"    # I

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 475
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 476
    .local v5, "tw":I
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v4, v6, v7

    .line 477
    .local v4, "th":I
    sparse-switch p7, :sswitch_data_0

    .line 507
    :goto_0
    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p8

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 508
    const/4 v6, -0x1

    move/from16 v0, p9

    if-eq v0, v6, :cond_0

    .line 509
    div-int/lit8 v1, p7, 0x5a

    .line 510
    .local v1, "idx1":I
    move/from16 v2, p9

    .line 511
    .local v2, "idx2":I
    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v6, v6, v1

    move-object/from16 v0, p8

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    aput v7, v6, v2

    .line 512
    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v6, v6, v1

    move-object/from16 v0, p8

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    aput v7, v6, v2

    .line 514
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    :cond_0
    return-void

    .line 480
    :sswitch_0
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 481
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 482
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, p5, v6

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 483
    sub-int v6, p5, v4

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 487
    :sswitch_1
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, p4, v6

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 488
    sub-int v6, p4, v5

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 489
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 490
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 494
    :sswitch_2
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 495
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 496
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, p3

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 497
    add-int v6, p3, v4

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 501
    :sswitch_3
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, p2

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 502
    add-int v6, p2, v5

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 503
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 504
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 477
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private center(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 856
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v4, v5, v6

    .line 857
    .local v4, "tw":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v3, v5, v6

    .line 858
    .local v3, "th":I
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 859
    .local v0, "cx":I
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 860
    .local v1, "cy":I
    div-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v0

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    iget v9, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 864
    return-void
.end method

.method public static isAnimating()Z
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    return v0
.end method

.method private layoutRemaingPhotos()V
    .locals 14

    .prologue
    .line 1041
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1042
    .local v4, "rl":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1043
    .local v6, "rt":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1044
    .local v5, "rr":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1045
    .local v3, "rb":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    .line 1046
    .local v8, "w":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 1047
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0089

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1049
    .local v2, "m":I
    add-int v9, v4, v5

    div-int/lit8 v1, v9, 0x2

    .line 1050
    .local v1, "hc":I
    add-int v9, v6, v3

    div-int/lit8 v9, v9, 0x2

    sub-int v7, v9, v2

    .line 1051
    .local v7, "vc":I
    iget v9, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_1

    .line 1052
    :cond_0
    div-int/lit8 v9, v8, 0x2

    sub-int/2addr v7, v9

    .line 1054
    :cond_1
    div-int/lit8 v9, v8, 0x2

    if-ge v1, v9, :cond_2

    .line 1055
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    div-int/lit8 v11, v0, 0x2

    sub-int v11, v7, v11

    div-int/lit8 v12, v0, 0x2

    add-int/2addr v12, v7

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1059
    :goto_0
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 1060
    return-void

    .line 1057
    :cond_2
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

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
    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 435
    .local v13, "tw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 437
    .local v12, "th":I
    sparse-switch p4, :sswitch_data_0

    .line 462
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p2, v0

    div-int/lit8 v9, v0, 0x4

    .line 463
    .local v9, "l":I
    div-int/lit8 v0, p3, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x4017000000000000L    # 5.75

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 464
    .local v7, "b":I
    add-int v10, v9, v13

    .line 465
    .local v10, "r":I
    sub-int v11, v7, v12

    .line 466
    .local v11, "t":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/4 v1, 0x0

    int-to-float v2, v12

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    int-to-float v4, v12

    const/4 v5, 0x0

    mul-int/lit8 v6, v12, 0x3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-virtual {v0, v9, v11, v10, v7}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->layout(IIII)V

    .line 470
    return-void

    .line 439
    .end local v7    # "b":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_0
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p3, v0

    int-to-double v0, v0

    sget v2, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 440
    .local v8, "c":I
    div-int/lit8 v0, v12, 0x2

    sub-int v11, v8, v0

    .line 441
    .restart local v11    # "t":I
    div-int/lit8 v0, v12, 0x2

    add-int v7, v8, v0

    .line 442
    .restart local v7    # "b":I
    div-int/lit8 v0, p2, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x4017000000000000L    # 5.75

    mul-double/2addr v0, v2

    double-to-int v10, v0

    .line 443
    .restart local v10    # "r":I
    sub-int v9, v10, v13

    .line 444
    .restart local v9    # "l":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    int-to-float v1, v13

    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v12, 0x2

    add-int/2addr v3, v13

    int-to-float v3, v3

    int-to-float v4, v12

    int-to-float v5, v13

    int-to-float v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto :goto_0

    .line 447
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

    .line 448
    .restart local v11    # "t":I
    add-int v7, v11, v12

    .line 449
    .restart local v7    # "b":I
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p2, v0

    int-to-double v0, v0

    sget v2, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v10, v0

    .line 450
    .restart local v10    # "r":I
    sub-int v9, v10, v13

    .line 451
    .restart local v9    # "l":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

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

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto :goto_0

    .line 454
    .end local v7    # "b":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_2
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p3, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 455
    .restart local v8    # "c":I
    div-int/lit8 v0, v12, 0x2

    sub-int v11, v8, v0

    .line 456
    .restart local v11    # "t":I
    div-int/lit8 v0, v12, 0x2

    add-int v7, v8, v0

    .line 457
    .restart local v7    # "b":I
    div-int/lit8 v0, p2, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v9, v0

    .line 458
    .restart local v9    # "l":I
    add-int v10, v9, v13

    .line 459
    .restart local v10    # "r":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    div-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    neg-int v5, v12

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto/16 :goto_0

    .line 437
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private markVisibility()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 297
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_a
    return-void

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private resetLocation(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v1

    .line 518
    .local v1, "rotation":I
    div-int/lit8 v0, v1, 0x5a

    .line 520
    .local v0, "idx1":I
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v6

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 521
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v5

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 526
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xc

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v7

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 530
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v8

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 531
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v9

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 532
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 533
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xb

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 534
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x5

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 535
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 536
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xa

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 537
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 538
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 540
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v6

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 541
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_3

    .line 542
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v5

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 546
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v2, :cond_1

    .line 547
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xc

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v7

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 550
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v8

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 551
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v9

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 552
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 553
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xb

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 554
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x5

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 555
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 556
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xa

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 557
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 558
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 559
    return-void

    .line 524
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v5

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 544
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v5

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1
.end method

.method private setLocation(II)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v4

    .line 407
    .local v4, "rotation":I
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 409
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/16 v7, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 416
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 418
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 419
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 420
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/16 v7, 0x8

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 421
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 422
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x7

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 423
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 428
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 429
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-direct {p0, v0, p1, p2, v4}, Lcom/android/camera/ui/CameraControls;->layoutToast(Landroid/view/View;III)V

    .line 431
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto :goto_1
.end method

.method private toIndex(Landroid/view/View;IIIIII)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I
    .param p5, "index"    # I
    .param p6, "index2"    # I
    .param p7, "index3"    # I

    .prologue
    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 868
    .local v12, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 869
    .local v16, "tw":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 870
    .local v15, "th":I
    const/4 v11, 0x0

    .local v11, "l":I
    const/4 v13, 0x0

    .local v13, "r":I
    const/4 v14, 0x0

    .local v14, "t":I
    const/4 v2, 0x0

    .line 872
    .local v2, "b":I
    sget v18, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 873
    .local v18, "wnumber":I
    const/4 v8, 0x7

    .line 874
    .local v8, "hnumber":I
    const/16 v17, 0x0

    .line 875
    .local v17, "windex":I
    const/4 v7, 0x0

    .line 876
    .local v7, "hindex":I
    sparse-switch p4, :sswitch_data_0

    .line 906
    :goto_0
    div-int v3, p3, v8

    .line 907
    .local v3, "boxh":I
    div-int v4, p2, v18

    .line 908
    .local v4, "boxw":I
    mul-int/lit8 v19, v17, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v4

    div-int/lit8 v5, v19, 0x2

    .line 909
    .local v5, "cx":I
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v3

    div-int/lit8 v6, v19, 0x2

    .line 911
    .local v6, "cy":I
    if-nez p6, :cond_0

    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v19, :cond_0

    .line 912
    sparse-switch p4, :sswitch_data_1

    .line 923
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v6, v19, 0x2

    .line 928
    :cond_0
    :goto_1
    div-int/lit8 v19, v16, 0x2

    sub-int v11, v5, v19

    .line 929
    div-int/lit8 v19, v16, 0x2

    add-int v13, v5, v19

    .line 930
    div-int/lit8 v19, v15, 0x2

    sub-int v14, v6, v19

    .line 931
    div-int/lit8 v19, v15, 0x2

    add-int v2, v6, v19

    .line 933
    const/16 v19, -0x1

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 934
    div-int/lit8 v9, p4, 0x5a

    .line 935
    .local v9, "idx1":I
    move/from16 v10, p7

    .line 936
    .local v10, "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    int-to-float v0, v11

    move/from16 v20, v0

    aput v20, v19, v10

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v19, v10

    .line 939
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14, v13, v2}, Landroid/view/View;->layout(IIII)V

    .line 940
    return-void

    .line 879
    .end local v3    # "boxh":I
    .end local v4    # "boxw":I
    .end local v5    # "cx":I
    .end local v6    # "cy":I
    :sswitch_0
    sget v18, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 880
    const/4 v8, 0x7

    .line 881
    move/from16 v17, p5

    .line 882
    move/from16 v7, p6

    .line 883
    goto :goto_0

    .line 886
    :sswitch_1
    const/16 v18, 0x7

    .line 887
    sget v8, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 888
    move/from16 v17, p6

    .line 889
    sub-int v19, v8, p5

    add-int/lit8 v7, v19, -0x1

    .line 890
    goto :goto_0

    .line 893
    :sswitch_2
    sget v18, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 894
    const/4 v8, 0x7

    .line 895
    sub-int v19, v18, p5

    add-int/lit8 v17, v19, -0x1

    .line 896
    sub-int v19, v8, p6

    add-int/lit8 v7, v19, -0x1

    .line 897
    goto :goto_0

    .line 900
    :sswitch_3
    const/16 v18, 0x7

    .line 901
    sget v8, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 902
    sub-int v19, v18, p6

    add-int/lit8 v17, v19, -0x1

    .line 903
    move/from16 v7, p5

    goto/16 :goto_0

    .line 914
    .restart local v3    # "boxh":I
    .restart local v4    # "boxw":I
    .restart local v5    # "cx":I
    .restart local v6    # "cy":I
    :sswitch_4
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v5, v19, 0x2

    .line 915
    goto :goto_1

    .line 917
    :sswitch_5
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v19, v19, 0x2

    sub-int v6, p3, v19

    .line 918
    goto :goto_1

    .line 920
    :sswitch_6
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v19, v19, 0x2

    sub-int v5, p2, v19

    .line 921
    goto :goto_1

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 912
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_4
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_6
    .end sparse-switch
.end method

.method private toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 944
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 945
    .local v8, "tw":I
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v9, v10

    .line 946
    .local v7, "th":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 947
    .local v1, "cx":I
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    .line 948
    .local v2, "cy":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 949
    .local v0, "b":I
    sparse-switch p3, :sswitch_data_0

    .line 979
    :goto_0
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 980
    return-void

    .line 952
    :sswitch_0
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 953
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 954
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 955
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 956
    goto :goto_0

    .line 959
    :sswitch_1
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 960
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 961
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 962
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 963
    goto :goto_0

    .line 966
    :sswitch_2
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 967
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 968
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 969
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 970
    goto :goto_0

    .line 973
    :sswitch_3
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 974
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 975
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 976
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    goto :goto_0

    .line 949
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private toRight(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 983
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 984
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 985
    .local v8, "tw":I
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v9, v10

    .line 986
    .local v7, "th":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 987
    .local v1, "cx":I
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    .line 988
    .local v2, "cy":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 989
    .local v0, "b":I
    sparse-switch p3, :sswitch_data_0

    .line 1015
    :goto_0
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 1016
    return-void

    .line 991
    :sswitch_0
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 992
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 993
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 994
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 995
    goto :goto_0

    .line 997
    :sswitch_1
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 998
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 999
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 1000
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 1001
    goto :goto_0

    .line 1003
    :sswitch_2
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 1004
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 1005
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 1006
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 1007
    goto :goto_0

    .line 1009
    :sswitch_3
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 1010
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 1011
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 1012
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    goto :goto_0

    .line 989
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public enableTouch(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 239
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 244
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->enableTouch(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_4

    .line 265
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    return-void

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 263
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public getPanoramaExitButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    return-object v0
.end method

.method public hideCameraSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1126
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRemainingPhotoCnt()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 1157
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    return-void
.end method

.method public hideUI()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    .line 590
    sget-boolean v1, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    if-nez v1, :cond_0

    .line 591
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 592
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 593
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 594
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 595
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_2

    .line 596
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 600
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 604
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 605
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 606
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 607
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 608
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 609
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 610
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 611
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 612
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 613
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->outlistener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 614
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->removePopup()V

    .line 615
    invoke-direct {p0, v3, v3}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 616
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->markVisibility()V

    .line 617
    sparse-switch v0, :sswitch_data_0

    .line 707
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 709
    return-void

    .line 598
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/16 :goto_0

    .line 619
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 620
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_4

    .line 621
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 625
    :goto_2
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_3

    .line 626
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 628
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 629
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 630
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 631
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 632
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 634
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 635
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 636
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 637
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 638
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 623
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_2

    .line 641
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 642
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_6

    .line 643
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 647
    :goto_3
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_5

    .line 648
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 650
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 651
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 652
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 653
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 654
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 656
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 657
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 658
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 659
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 660
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 645
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    .line 663
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 664
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_8

    .line 665
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 669
    :goto_4
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_7

    .line 670
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 672
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 673
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 674
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 675
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 676
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 678
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 679
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 680
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 681
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 682
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 667
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 685
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 686
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_a

    .line 687
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 691
    :goto_5
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_9

    .line 692
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 694
    :cond_9
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 695
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 696
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 697
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 698
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 700
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 701
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 702
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 703
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 704
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 689
    :cond_a
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_5

    .line 617
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 380
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v9

    .line 382
    .local v9, "rotation":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .local v10, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 383
    .local v8, "h":I
    sparse-switch v9, :sswitch_data_0

    .line 397
    int-to-float v3, v10

    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 398
    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 402
    .end local v8    # "h":I
    .end local v9    # "rotation":I
    .end local v10    # "w":I
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local v8    # "h":I
    .restart local v9    # "rotation":I
    .restart local v10    # "w":I
    :sswitch_0
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v5, v10

    int-to-float v6, v8

    iget-object v7, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 389
    :sswitch_1
    int-to-float v3, v10

    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 390
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 393
    :sswitch_2
    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 394
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v5, v10

    int-to-float v6, v8

    iget-object v7, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 315
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    .line 316
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    .line 317
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    .line 318
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    .line 319
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    .line 320
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 321
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    .line 325
    :goto_0
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    .line 326
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    .line 327
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    .line 328
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    .line 331
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    .line 332
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    .line 333
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    .line 334
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    .line 335
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    .line 336
    return-void

    .line 323
    :cond_0
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v11, v5, Landroid/content/res/Configuration;->orientation:I

    .line 341
    .local v11, "orientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 342
    .local v26, "size":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v12

    .line 343
    .local v12, "rotation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->adjustBackground()V

    .line 346
    sub-int p4, p4, p2

    .line 347
    sub-int p5, p5, p3

    .line 348
    const/16 p2, 0x0

    .line 349
    const/16 p3, 0x0

    .line 350
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getChildCount()I

    move-result v5

    move/from16 v0, v24

    if-ge v0, v5, :cond_0

    .line 351
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 352
    .local v27, "v":Landroid/view/View;
    move-object/from16 v0, v27

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 350
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 354
    .end local v27    # "v":Landroid/view/View;
    :cond_0
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 355
    .local v13, "shutter":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    const/4 v14, 0x6

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v5 .. v14}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V

    .line 356
    iget v5, v13, Landroid/graphics/Rect;->right:I

    iget v6, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v13, Landroid/graphics/Rect;->bottom:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/ui/CameraControls;->mSize:I

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    const/16 v23, -0x1

    move-object/from16 v14, p0

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-direct/range {v14 .. v23}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 359
    sub-int v5, p4, p2

    sub-int v6, p5, p3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/camera/ui/CameraControls;->setLocation(II)V

    .line 361
    const v5, 0x7f0d00bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 362
    .local v25, "retake":Landroid/view/View;
    if-eqz v25, :cond_1

    .line 363
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    .line 364
    const v5, 0x7f0d00be

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    .line 365
    const v5, 0x7f0d00bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    .line 367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v12}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v12}, Lcom/android/camera/ui/CameraControls;->toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v12}, Lcom/android/camera/ui/CameraControls;->toRight(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 375
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->layoutRemaingPhotos()V

    .line 376
    return-void

    .line 371
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    .line 372
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    .line 373
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    goto :goto_1
.end method

.method public removeFromViewList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    return-void
.end method

.method public setBokehMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x6

    .line 577
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    .line 578
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 579
    sput v1, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 586
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->requestLayout()V

    .line 587
    return-void

    .line 582
    :cond_0
    sput v1, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 584
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMargins(II)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    .line 1082
    sput p1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    .line 1083
    sput p2, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    .line 1084
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1109
    iput p1, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    .line 1110
    const/16 v2, 0xe

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    aput-object v4, v1, v2

    const/4 v4, 0x3

    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    :goto_0
    aput-object v2, v1, v4

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    aput-object v4, v1, v2

    const/16 v2, 0xc

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    aput-object v4, v1, v2

    const/16 v2, 0xd

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    aput-object v4, v1, v2

    .line 1116
    .local v1, "views":[Landroid/view/View;
    array-length v4, v1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    .line 1117
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1118
    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1116
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1110
    .end local v1    # "views":[Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    goto :goto_0

    .line 1122
    .restart local v1    # "views":[Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->layoutRemaingPhotos()V

    .line 1123
    return-void
.end method

.method public setPreviewRatio(FZ)V
    .locals 4
    .param p1, "ratio"    # F
    .param p2, "panorama"    # Z

    .prologue
    .line 1087
    if-eqz p2, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1098
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->invalidate()V

    .line 1099
    return-void

    .line 1090
    :cond_0
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v0

    .line 1091
    .local v0, "r":I
    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    .line 1092
    iget v1, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setTitleBarVisibility(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCameraSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1141
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    return-void

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRefocusToast(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1102
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 1103
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1106
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1102
    goto :goto_0

    :cond_2
    move v2, v1

    .line 1104
    goto :goto_1
.end method

.method public showRemainingPhotoCnt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1162
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 1163
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    return-void
.end method

.method public showUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    .line 712
    sget-boolean v3, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    if-nez v3, :cond_0

    .line 713
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 714
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 715
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 716
    .local v0, "rotation":I
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 717
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_2

    .line 718
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 722
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_1

    .line 723
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 725
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 726
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 727
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 728
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 729
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 730
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 731
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 732
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 733
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 734
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 735
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 736
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 737
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 720
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/16 :goto_0

    .line 739
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v3, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v3}, Lcom/android/camera/ui/ModuleSwitcher;->removePopup()V

    .line 740
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 741
    .local v1, "shutterAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_4

    .line 742
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 744
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->inlistener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 749
    sparse-switch v0, :sswitch_data_0

    .line 847
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-nez v3, :cond_5

    .line 849
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 852
    return-void

    .line 751
    :sswitch_0
    iget v3, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v8, v3}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 753
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 754
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_7

    .line 755
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 759
    :goto_3
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_6

    .line 760
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 762
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 763
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 764
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 765
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 766
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 768
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 769
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 770
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 771
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 772
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_2

    .line 757
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    .line 775
    :sswitch_1
    iget v3, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v3, v8}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 777
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 778
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_9

    .line 779
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 783
    :goto_4
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_8

    .line 784
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 786
    :cond_8
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 787
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 788
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 789
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 790
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 792
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 793
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 794
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 795
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 796
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_2

    .line 781
    :cond_9
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 799
    :sswitch_2
    iget v3, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v3, v3

    invoke-direct {p0, v8, v3}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 801
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 802
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_b

    .line 803
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 807
    :goto_5
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_a

    .line 808
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 810
    :cond_a
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 811
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 812
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 813
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 814
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 816
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 817
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 818
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 819
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 820
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_2

    .line 805
    :cond_b
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_5

    .line 823
    :sswitch_3
    iget v3, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v3, v3

    invoke-direct {p0, v3, v8}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 825
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 826
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_d

    .line 827
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 831
    :goto_6
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_c

    .line 832
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 834
    :cond_c
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 835
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 836
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 837
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 838
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 840
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 841
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 842
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 843
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 844
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_2

    .line 829
    :cond_d
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_6

    .line 749
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public updateRemainingPhotos(I)V
    .locals 8
    .param p1, "remaining"    # I

    .prologue
    .line 1063
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    sub-long v2, v4, v6

    .line 1064
    .local v2, "remainingStorage":J
    if-gez p1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-eqz v1, :cond_2

    .line 1065
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1078
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    .line 1079
    return-void

    .line 1067
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1068
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1070
    :cond_3
    const/16 v1, 0x14

    if-ge p1, v1, :cond_4

    .line 1071
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v4, "<20 "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1072
    :cond_4
    const v1, 0xf4240

    if-lt p1, v1, :cond_5

    .line 1073
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v4, ">1000000"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1075
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

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
