.class public Lcom/android/camera/ui/PieRenderer;
.super Lcom/android/camera/ui/OverlayRenderer;
.source "PieRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PieRenderer$Disappear;,
        Lcom/android/camera/ui/PieRenderer$PieListener;
    }
.end annotation


# static fields
.field protected static CENTER:F = 0.0f

.field private static final DIAL_HORIZONTAL:I = 0x9d

.field private static final DISAPPEAR_TIMEOUT:I = 0xc8

.field private static final FPS:I = 0x1e

.field private static final MATH_PI_2:F = 1.5707964f

.field private static final MSG_CLOSE:I = 0x1

.field private static final MSG_MOVED:I = 0x3

.field private static final MSG_OPEN:I = 0x0

.field private static final MSG_OPENSUBMENU:I = 0x2

.field private static final PIE_FADE_IN_DURATION:J = 0xc8L

.field private static final PIE_FADE_OUT_DURATION:I = 0x258

.field private static final PIE_OPEN_SUB_DELAY:J = 0x190L

.field private static final PIE_SELECT_FADE_DURATION:J = 0x12cL

.field private static final PIE_SLICE_DURATION:J = 0x50L

.field private static final PIE_XFADE_DURATION:J = 0xc8L

.field protected static RAD24:F = 0.0f

.field private static final SCALING_DOWN_TIME:I = 0x64

.field private static final SCALING_UP_TIME:I = 0x258

.field private static final STATE_FINISHING:I = 0x2

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PIE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PieRenderer"


# instance fields
.field private mAngleZone:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mArcCenterY:I

.field private mArcOffset:I

.field private mArcRadius:I

.field private mBlockFocus:Z

.field private mBokehFocusCircle:Landroid/graphics/Bitmap;

.field private mBokehFocusIndex:I

.field private mBokehFocusResId:Landroid/content/res/TypedArray;

.field private mCenterAngle:F

.field private mCenterX:I

.field private mCenterY:I

.field private mCircle:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mCurrentItem:Lcom/android/camera/ui/PieItem;

.field private mDeadZone:I

.field private mDial:Landroid/graphics/RectF;

.field private mDialAngle:I

.field private mDisappear:Ljava/lang/Runnable;

.field private mDown:Landroid/graphics/Point;

.field private mFadeIn:Landroid/animation/ValueAnimator;

.field private mFadeOut:Landroid/animation/ValueAnimator;

.field private mFailColor:I

.field private volatile mFocusCancelled:Z

.field private mFocusPaint:Landroid/graphics/Paint;

.field private mFocusX:I

.field private mFocusY:I

.field private mFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mInnerOffset:I

.field private mInnerStroke:I

.field private mIsBokehMode:Z

.field private mLabel:Lcom/android/camera/drawable/TextDrawable;

.field private mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

.field private mMaxArcRadius:I

.field private mMenuArcPaint:Landroid/graphics/Paint;

.field private mOpen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOpening:Z

.field private mOuterStroke:I

.field private mPieCenterX:I

.field private mPieCenterY:I

.field private mPoint1:Landroid/graphics/Point;

.field private mPoint2:Landroid/graphics/Point;

.field private mPolar:Landroid/graphics/PointF;

.field private mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

.field private mRadius:I

.field private mRadiusInc:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSlice:Landroid/animation/ValueAnimator;

.field private mSliceCenterY:I

.field private mSliceRadius:I

.field private mStartAnimationAngle:I

.field private volatile mState:I

.field private mSubPaint:Landroid/graphics/Paint;

.field private mSuccessColor:I

.field private mTapMode:Z

.field private mTouchOffset:I

.field private mTouchSlopSquared:I

.field private mXFade:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    .line 99
    const v0, 0x3ed67750

    sput v0, Lcom/android/camera/ui/PieRenderer;->RAD24:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Lcom/android/camera/ui/OverlayRenderer;-><init>()V

    .line 79
    new-instance v0, Lcom/android/camera/ui/PieRenderer$Disappear;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/PieRenderer$Disappear;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    .line 162
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mIsBokehMode:Z

    .line 165
    iput v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusIndex:I

    .line 170
    new-instance v0, Lcom/android/camera/ui/PieRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PieRenderer$1;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    .line 209
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->init(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/PieRenderer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/camera/ui/PieRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/PieRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/PieRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/PieRenderer;JZF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # F

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZF)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/PieRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/PieRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/PieRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/PieRenderer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/PieRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mIsBokehMode:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/PieRenderer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->onEnterOpen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/ui/PieRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/camera/ui/PieRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    return-void
.end method

.method private cancelFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 1112
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1113
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1116
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 1117
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 1118
    iput v2, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 1119
    return-void
.end method

.method private closeOpenItem()Lcom/android/camera/ui/PieItem;
    .locals 3

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 589
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 590
    return-object v0
.end method

.method private static convertCart(IILandroid/graphics/Point;)V
    .locals 8
    .param p0, "angle"    # I
    .param p1, "radius"    # I
    .param p2, "out"    # Landroid/graphics/Point;

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1060
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    rem-int/lit16 v4, p0, 0x168

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double v0, v2, v4

    .line 1061
    .local v0, "a":D
    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 1062
    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 1063
    return-void
.end method

.method private deselect()V
    .locals 3

    .prologue
    .line 880
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->closeOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 885
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->onEnter(Lcom/android/camera/ui/PieItem;)V

    .line 889
    .end local v0    # "item":Lcom/android/camera/ui/PieItem;
    :goto_0
    return-void

    .line 887
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    goto :goto_0
.end method

.method private drawArc(Landroid/graphics/Canvas;ILcom/android/camera/ui/PieItem;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "level"    # I
    .param p3, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const v2, 0x3e6b851f    # 0.23f

    .line 667
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 668
    invoke-virtual {p3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 669
    .local v6, "count":I
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    int-to-float v1, v6

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float v9, v0, v1

    .line 670
    .local v9, "start":F
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    int-to-float v1, v6

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float v8, v0, v1

    .line 671
    .local v8, "end":F
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v1, p2

    sub-int v7, v0, v1

    .line 672
    .local v7, "cy":I
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    float-to-double v2, v8

    .line 674
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    float-to-double v4, v9

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v0

    float-to-double v4, v8

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v3

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 672
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 676
    .end local v6    # "count":I
    .end local v7    # "cy":I
    .end local v8    # "end":F
    .end local v9    # "start":F
    :cond_0
    return-void
.end method

.method private drawBokehFocus(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 312
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 313
    .local v0, "x":F
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 314
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 317
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    return-void
.end method

.method private drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pos"    # I
    .param p3, "count"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "item"    # Lcom/android/camera/ui/PieItem;
    .param p6, "alpha"    # F

    .prologue
    .line 679
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 680
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 681
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v5, p1

    sub-int v3, v4, v5

    .line 682
    .local v3, "y":I
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 683
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 684
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 685
    .local v2, "state":I
    const/4 v0, 0x0

    .line 686
    .local v0, "angle":F
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    .line 687
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 691
    :goto_0
    float-to-double v4, v0

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v0

    .line 692
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p4, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 693
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 694
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p6

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 696
    :cond_0
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {p4, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 697
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 698
    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 700
    :cond_1
    invoke-virtual {p4, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 702
    .end local v0    # "angle":F
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "state":I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_3

    .line 703
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr p6, v4

    .line 705
    invoke-virtual {p5, p6}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 707
    :cond_3
    invoke-virtual {p5, p4}, Lcom/android/camera/ui/PieItem;->draw(Landroid/graphics/Canvas;)V

    .line 710
    .end local v3    # "y":I
    :cond_4
    return-void

    .line 689
    .restart local v0    # "angle":F
    .restart local v1    # "p":Landroid/graphics/Paint;
    .restart local v2    # "state":I
    .restart local v3    # "y":I
    :cond_5
    invoke-direct {p0, p5, p2, p3}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v4

    const v5, 0x3deb851f    # 0.115f

    sub-float v0, v4, v5

    goto :goto_0

    .line 703
    .end local v0    # "angle":F
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "state":I
    :cond_6
    const v4, 0x3e99999a    # 0.3f

    goto :goto_1
.end method

.method private drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "angle"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1053
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 1054
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 1055
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1057
    return-void
.end method

.method private fadeIn()V
    .locals 4

    .prologue
    .line 394
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PieRenderer$2;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 418
    return-void

    .line 395
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;
    .locals 6
    .param p1, "polar"    # Landroid/graphics/PointF;

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v2

    .line 981
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 982
    .local v0, "count":I
    const/4 v3, 0x0

    .line 983
    .local v3, "pos":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PieItem;

    .line 984
    .local v1, "item":Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/camera/ui/PieRenderer;->inside(Landroid/graphics/PointF;Lcom/android/camera/ui/PieItem;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 989
    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    :goto_1
    return-object v1

    .line 987
    .restart local v1    # "item":Lcom/android/camera/ui/PieItem;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 988
    goto :goto_0

    .line 989
    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getArcCenter(Lcom/android/camera/ui/PieItem;II)F
    .locals 1
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;
    .param p2, "pos"    # I
    .param p3, "count"    # I

    .prologue
    .line 511
    const v0, 0x3e6b851f    # 0.23f

    invoke-direct {p0, p2, p3, v0}, Lcom/android/camera/ui/PieRenderer;->getCenter(IIF)F

    move-result v0

    return v0
.end method

.method private getCenter(IIF)F
    .locals 3
    .param p1, "pos"    # I
    .param p2, "count"    # I
    .param p3, "sweep"    # F

    .prologue
    .line 521
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    return v0
.end method

.method private getCenterAngle()F
    .locals 5

    .prologue
    .line 525
    sget v0, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    .line 526
    .local v0, "center":F
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 527
    sget v1, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/ui/PieRenderer;->RAD24:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 530
    sget v1, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/ui/PieRenderer;->RAD24:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0
.end method

.method private getCurrentCount()I
    .locals 1

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getDegrees(D)F
    .locals 7
    .param p1, "angle"    # D

    .prologue
    .line 542
    const-wide v0, 0x4076800000000000L    # 360.0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getItemPos(Lcom/android/camera/ui/PieItem;)I
    .locals 2
    .param p1, "target"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    .line 893
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private getLevel()I
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getOpenItem()Lcom/android/camera/ui/PieItem;
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    return-object v0
.end method

.method private getParent()Lcom/android/camera/ui/PieItem;
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    return-object v0
.end method

.method private getPolar(FFZLandroid/graphics/PointF;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffset"    # Z
    .param p4, "res"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x0

    .line 817
    const v2, 0x3fc90fdb

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 818
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 819
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mSliceCenterY:I

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 820
    .local v0, "y1":F
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v1, v2, p2

    .line 821
    .local v1, "y2":F
    mul-float v2, p1, p1

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->y:F

    .line 822
    cmpl-float v2, p1, v6

    if-eqz v2, :cond_0

    .line 823
    float-to-double v2, v0

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 824
    iget v2, p4, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    .line 825
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget v4, p4, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 828
    :cond_0
    iget v3, p4, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mTouchOffset:I

    :goto_0
    int-to-float v2, v2

    add-float/2addr v2, v3

    iput v2, p4, Landroid/graphics/PointF;->y:F

    .line 829
    return-void

    .line 828
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRandomRange()I
    .locals 6

    .prologue
    .line 1019
    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getRoot()Lcom/android/camera/ui/PieItem;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    return-object v0
.end method

.method private getSliceCenter(Lcom/android/camera/ui/PieItem;II)F
    .locals 4
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;
    .param p2, "pos"    # I
    .param p3, "count"    # I

    .prologue
    const v3, 0x3e0f5c29    # 0.14f

    .line 515
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getCenterAngle()F

    move-result v1

    sget v2, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    add-float v0, v1, v2

    .line 516
    .local v0, "center":F
    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    int-to-float v2, p2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method private hasMoved(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 832
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOpenItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 583
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 213
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    .line 215
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    new-instance v2, Lcom/android/camera/ui/PieItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v7}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    .line 218
    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    .line 219
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    const v2, 0x7f0c004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    .line 220
    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchOffset:I

    .line 221
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v2, 0x33

    const/16 v3, 0xb5

    const/16 v4, 0xe5

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    .line 225
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    const/16 v3, 0xfa

    const/16 v4, 0xe6

    const/16 v5, 0x80

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    .line 228
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    const v1, -0xff0100

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mSuccessColor:I

    .line 232
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mFailColor:I

    .line 233
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    .line 234
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    .line 235
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    .line 236
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    .line 237
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    .line 238
    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mOuterStroke:I

    .line 239
    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerStroke:I

    .line 240
    iput v7, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 241
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 242
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 243
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 244
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    .line 245
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    .line 246
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    const/16 v2, 0x8c

    invoke-static {v2, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mSliceRadius:I

    .line 251
    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    .line 252
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mMaxArcRadius:I

    .line 253
    const v1, 0x7f0c0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcOffset:I

    .line 254
    new-instance v1, Lcom/android/camera/drawable/TextDrawable;

    invoke-direct {v1, v0}, Lcom/android/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    invoke-virtual {v1, v6}, Lcom/android/camera/drawable/TextDrawable;->setDropShadow(Z)V

    .line 256
    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    .line 257
    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    .line 258
    new-instance v1, Lcom/android/camera/ui/ProgressRenderer;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/ProgressRenderer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    .line 259
    return-void
.end method

.method private inside(Landroid/graphics/PointF;Lcom/android/camera/ui/PieItem;II)Z
    .locals 4
    .param p1, "polar"    # Landroid/graphics/PointF;
    .param p2, "item"    # Lcom/android/camera/ui/PieItem;
    .param p3, "pos"    # I
    .param p4, "count"    # I

    .prologue
    .line 807
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/ui/PieRenderer;->getSliceCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v2

    const v3, 0x3d8f5c29    # 0.07f

    sub-float v1, v2, v3

    .line 808
    .local v1, "start":F
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const v2, 0x3e0f5c29    # 0.14f

    add-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 812
    .local v0, "res":Z
    :goto_0
    return v0

    .line 808
    .end local v0    # "res":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutItems(ILjava/util/List;)V
    .locals 20
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    const/4 v11, 0x1

    .line 471
    .local v11, "extend":I
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    int-to-float v3, v11

    add-float/2addr v3, v2

    const-wide v4, 0x3fcd70a3e0000000L    # 0.23000000417232513

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    int-to-float v4, v11

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int v8, v8, p1

    sub-int v8, v2, v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/ui/PieRenderer;->makeSlice(FFIIII)Landroid/graphics/Path;

    move-result-object v14

    .line 474
    .local v14, "path":Landroid/graphics/Path;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 475
    .local v10, "count":I
    const/4 v15, 0x0

    .line 476
    .local v15, "pos":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/ui/PieItem;

    .line 478
    .local v13, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v13, v14}, Lcom/android/camera/ui/PieItem;->setPath(Landroid/graphics/Path;)V

    .line 479
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15, v10}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v9

    .line 480
    .local v9, "angle":F
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getIntrinsicWidth()I

    move-result v17

    .line 481
    .local v17, "w":I
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getIntrinsicHeight()I

    move-result v12

    .line 483
    .local v12, "h":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    add-int v16, v3, v4

    .line 484
    .local v16, "r":I
    move/from16 v0, v16

    int-to-double v4, v0

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v18, v0

    .line 485
    .local v18, "x":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int v4, v4, p1

    sub-int/2addr v3, v4

    move/from16 v0, v16

    int-to-double v4, v0

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v12, 0x2

    sub-int v19, v3, v4

    .line 486
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    add-int v3, v3, v18

    div-int/lit8 v4, v17, 0x2

    sub-int v18, v3, v4

    .line 487
    add-int v3, v18, v17

    add-int v4, v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1, v3, v4}, Lcom/android/camera/ui/PieItem;->setBounds(IIII)V

    .line 488
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/camera/ui/PieItem;->setLevel(I)V

    .line 489
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/camera/ui/PieRenderer;->layoutItems(ILjava/util/List;)V

    .line 492
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 493
    goto :goto_0

    .line 494
    .end local v9    # "angle":F
    .end local v12    # "h":I
    .end local v13    # "item":Lcom/android/camera/ui/PieItem;
    .end local v16    # "r":I
    .end local v17    # "w":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_1
    return-void
.end method

.method private layoutLabel(I)V
    .locals 9
    .param p1, "level"    # I

    .prologue
    .line 461
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    sget v6, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/lit8 v7, p1, 0x2

    iget v8, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v2, v4, v5

    .line 463
    .local v2, "x":I
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x2

    iget v6, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v5, v6

    sub-int v3, v4, v5

    .line 464
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    invoke-virtual {v4}, Lcom/android/camera/drawable/TextDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 465
    .local v1, "w":I
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    invoke-virtual {v4}, Lcom/android/camera/drawable/TextDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 466
    .local v0, "h":I
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    div-int/lit8 v5, v1, 0x2

    sub-int v5, v2, v5

    div-int/lit8 v6, v0, 0x2

    sub-int v6, v3, v6

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v2

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/drawable/TextDrawable;->setBounds(IIII)V

    .line 467
    return-void
.end method

.method private layoutPie()V
    .locals 2

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getCenterAngle()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->layoutItems(ILjava/util/List;)V

    .line 457
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 458
    return-void
.end method

.method private makeSlice(FFIIII)Landroid/graphics/Path;
    .locals 7
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "inner"    # I
    .param p4, "outer"    # I
    .param p5, "cx"    # I
    .param p6, "cy"    # I

    .prologue
    .line 497
    new-instance v0, Landroid/graphics/RectF;

    sub-int v3, p5, p4

    int-to-float v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    add-int v5, p5, p4

    int-to-float v5, v5

    add-int v6, p6, p4

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 500
    .local v0, "bb":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-int v4, p6, p3

    int-to-float v4, v4

    add-int v5, p5, p3

    int-to-float v5, v5

    add-int v6, p6, p3

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 503
    .local v1, "bbi":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 504
    .local v2, "path":Landroid/graphics/Path;
    sub-float v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 505
    sub-float v3, p1, p2

    invoke-virtual {v2, v1, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 506
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 507
    return-object v2
.end method

.method private moveSelection(Lcom/android/camera/ui/PieItem;Lcom/android/camera/ui/PieItem;)V
    .locals 8
    .param p1, "from"    # Lcom/android/camera/ui/PieItem;
    .param p2, "to"    # Lcom/android/camera/ui/PieItem;

    .prologue
    const/4 v5, -0x1

    const v6, 0x3deb851f    # 0.115f

    .line 901
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getCurrentCount()I

    move-result v0

    .line 902
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v2

    .line 903
    .local v2, "fromPos":I
    invoke-direct {p0, p2}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v4

    .line 904
    .local v4, "toPos":I
    if-eq v2, v5, :cond_0

    if-eq v4, v5, :cond_0

    .line 905
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v5

    invoke-direct {p0, p1, v5, v0}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v5

    sub-float v3, v5, v6

    .line 907
    .local v3, "startAngle":F
    invoke-direct {p0, p2}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v5

    invoke-direct {p0, p2, v5, v0}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v5

    sub-float v1, v5, v6

    .line 909
    .local v1, "endAngle":F
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    .line 910
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 912
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 913
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 914
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/PieRenderer$4;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/PieRenderer$4;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 932
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 934
    .end local v1    # "endAngle":F
    .end local v3    # "startAngle":F
    :cond_0
    return-void
.end method

.method private onEnter(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 866
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 868
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 869
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->openCurrentItem()V

    .line 872
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 877
    :cond_1
    :goto_0
    return-void

    .line 875
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    goto :goto_0
.end method

.method private onEnterOpen()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->openCurrentItem()V

    .line 855
    :cond_0
    return-void
.end method

.method private onEnterSelect(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 840
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/PieRenderer;->moveSelection(Lcom/android/camera/ui/PieItem;Lcom/android/camera/ui/PieItem;)V

    .line 842
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 843
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 844
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 845
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 849
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    goto :goto_0
.end method

.method private openCurrentItem()V
    .locals 4

    .prologue
    .line 937
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 940
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    .line 941
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 944
    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    .line 945
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 946
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 948
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 949
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 950
    .local v0, "ci":Lcom/android/camera/ui/PieItem;
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/PieRenderer$5;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/PieRenderer$5;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 970
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 972
    .end local v0    # "ci":Lcom/android/camera/ui/PieItem;
    :cond_1
    return-void

    .line 945
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private pulledToCenter(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "polarCoords"    # Landroid/graphics/PointF;

    .prologue
    .line 803
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPieCenter()V
    .locals 3

    .prologue
    .line 450
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    .line 451
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    .line 452
    return-void
.end method

.method private setCircle(II)V
    .locals 6
    .param p1, "cx"    # I
    .param p2, "cy"    # I

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1027
    return-void
.end method

.method private show(Z)V
    .locals 7
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 350
    if-eqz p1, :cond_4

    .line 351
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 354
    :cond_0
    const/16 v4, 0x8

    iput v4, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 356
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 357
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v2

    .line 358
    .local v2, "root":Lcom/android/camera/ui/PieItem;
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PieItem;

    .line 359
    .local v1, "openItem":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    .line 361
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    goto :goto_0

    .line 365
    .end local v0    # "item":Lcom/android/camera/ui/PieItem;
    .end local v1    # "openItem":Lcom/android/camera/ui/PieItem;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 367
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->layoutPie()V

    .line 369
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->fadeIn()V

    .line 380
    .end local v2    # "root":Lcom/android/camera/ui/PieItem;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 382
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    :goto_2
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    return-void

    .line 371
    :cond_4
    iput v3, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 372
    iput-boolean v3, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 373
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    .line 374
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 376
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    if-eqz v4, :cond_3

    .line 377
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 382
    :cond_6
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private startAnimation(JZF)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "timeout"    # Z
    .param p4, "toScale"    # F

    .prologue
    .line 1146
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    int-to-float v5, v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 1148
    return-void
.end method

.method private startAnimation(JZFF)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "timeout"    # Z
    .param p4, "fromScale"    # F
    .param p5, "toScale"    # F

    .prologue
    const/4 v2, 0x1

    .line 1152
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1156
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p4, v0, v1

    aput p5, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1157
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1158
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1159
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$8;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PieRenderer$8;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1172
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$9;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/ui/PieRenderer$9;-><init>(Lcom/android/camera/ui/PieRenderer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1192
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1194
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->update()V

    .line 1195
    return-void
.end method

.method private startFadeOut(Lcom/android/camera/ui/PieItem;)V
    .locals 4
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 552
    :cond_1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    .line 553
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 555
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PieRenderer$3;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 579
    return-void

    .line 553
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addItem(Lcom/android/camera/ui/PieItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 272
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieRenderer;->clear(Z)V

    .line 1142
    return-void
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "waitUntilProgressIsHidden"    # Z

    .prologue
    .line 1122
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 1126
    if-eqz p1, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$7;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PieRenderer$7;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressRenderer;->setVisibilityListener(Lcom/android/camera/ui/ProgressRenderer$VisibilityListener;)V

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->post(Ljava/lang/Runnable;)Z

    .line 1135
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressRenderer;->setVisibilityListener(Lcom/android/camera/ui/ProgressRenderer$VisibilityListener;)V

    goto :goto_0
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->clearItems()V

    .line 323
    return-void
.end method

.method public drawFocus(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    .line 1030
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    if-eqz v0, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mOuterStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1032
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1033
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 1035
    .local v6, "color":I
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1036
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mSuccessColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1039
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 1040
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit8 v0, v0, 0x2d

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 1041
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xb4

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 1042
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xe1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 1043
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1045
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1046
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1047
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1048
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 1036
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFailColor:I

    goto :goto_1
.end method

.method public getBokehFocusSize()Landroid/util/Size;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 307
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 343
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 799
    invoke-super {p0}, Lcom/android/camera/ui/OverlayRenderer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProgressRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 429
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/OverlayRenderer;->layout(IIII)V

    .line 430
    sub-int v1, p3, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    .line 431
    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    .line 433
    sub-int v0, p3, p1

    .line 434
    .local v0, "layoutWidth":I
    if-lez v0, :cond_1

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mMaxArcRadius:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_1

    .line 435
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    .line 439
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    .line 440
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    .line 441
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->resetPieCenter()V

    .line 442
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    .line 443
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 444
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 445
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->layoutPie()V

    .line 447
    :cond_0
    return-void

    .line 437
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mMaxArcRadius:I

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v7}, Lcom/android/camera/ui/ProgressRenderer;->onDraw(Landroid/graphics/Canvas;II)V

    .line 609
    const/high16 v9, 0x3f800000    # 1.0f

    .line 610
    .local v9, "alpha":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 617
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 618
    .local v19, "state":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 619
    const v3, 0x3f666666    # 0.9f

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v9

    add-float v18, v3, v4

    .line 620
    .local v18, "sf":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 622
    .end local v18    # "sf":F
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 623
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/PieRenderer;->mIsBokehMode:Z

    if-eqz v3, :cond_6

    .line 624
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/ui/PieRenderer;->drawBokehFocus(Landroid/graphics/Canvas;)V

    .line 629
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 630
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 663
    :cond_3
    :goto_2
    return-void

    .line 612
    .end local v19    # "state":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_0

    .line 614
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_0

    .line 626
    .restart local v19    # "state":I
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/ui/PieRenderer;->drawFocus(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 633
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_a

    .line 636
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getParent()Lcom/android/camera/ui/PieItem;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/camera/ui/PieRenderer;->drawArc(Landroid/graphics/Canvas;ILcom/android/camera/ui/PieItem;)V

    .line 637
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getParent()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v17

    .line 638
    .local v17, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    .line 639
    .local v6, "count":I
    const/4 v5, 0x0

    .line 640
    .local v5, "pos":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getParent()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/PieItem;

    .line 641
    .local v8, "item":Lcom/android/camera/ui/PieItem;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    .line 642
    add-int/lit8 v5, v5, 0x1

    .line 643
    goto :goto_3

    .line 644
    .end local v8    # "item":Lcom/android/camera/ui/PieItem;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/camera/drawable/TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 646
    .end local v5    # "pos":I
    .end local v6    # "count":I
    .end local v17    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v11

    .line 648
    .local v11, "level":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v3}, Lcom/android/camera/ui/PieRenderer;->drawArc(Landroid/graphics/Canvas;ILcom/android/camera/ui/PieItem;)V

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v17

    .line 650
    .restart local v17    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    .line 651
    .restart local v6    # "count":I
    const/4 v5, 0x0

    .line 652
    .restart local v5    # "pos":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/ui/PieItem;

    .line 653
    .local v15, "inner":Lcom/android/camera/ui/PieItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_b

    move-object/from16 v10, p0

    move v12, v5

    move v13, v6

    move-object/from16 v14, p1

    move/from16 v16, v9

    .line 654
    invoke-direct/range {v10 .. v16}, Lcom/android/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    .line 658
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 659
    goto :goto_4

    .line 656
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v9

    sub-float v16, v4, v7

    :goto_6
    move-object/from16 v10, p0

    move v12, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    goto :goto_5

    :cond_c
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_6

    .line 660
    .end local v15    # "inner":Lcom/android/camera/ui/PieItem;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/camera/drawable/TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 662
    .end local v5    # "pos":I
    .end local v6    # "count":I
    .end local v11    # "level":I
    .end local v17    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 714
    invoke-static {}, Lcom/android/camera/CameraActivity;->isPieMenuEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v7

    .line 716
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 717
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 718
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 719
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-nez v5, :cond_3

    move v5, v6

    :goto_1
    iget-object v8, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/camera/ui/PieRenderer;->getPolar(FFZLandroid/graphics/PointF;)V

    .line 720
    if-nez v0, :cond_5

    .line 721
    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_0

    .line 724
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Point;->x:I

    .line 725
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Point;->y:I

    .line 726
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    .line 727
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_4

    .line 728
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 729
    .local v1, "item":Lcom/android/camera/ui/PieItem;
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eq v5, v1, :cond_2

    .line 730
    const/16 v5, 0x8

    iput v5, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 731
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->onEnter(Lcom/android/camera/ui/PieItem;)V

    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    :cond_2
    :goto_2
    move v7, v6

    .line 737
    goto :goto_0

    :cond_3
    move v5, v7

    .line 719
    goto :goto_1

    .line 734
    :cond_4
    float-to-int v5, v3

    float-to-int v7, v4

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 735
    invoke-direct {p0, v6}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_2

    .line 738
    :cond_5
    if-ne v6, v0, :cond_9

    .line 739
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 741
    .restart local v1    # "item":Lcom/android/camera/ui/PieItem;
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_6

    .line 742
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 743
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v5, :cond_6

    .line 744
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    move v7, v6

    .line 745
    goto :goto_0

    .line 748
    :cond_6
    if-nez v1, :cond_7

    .line 749
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 750
    invoke-direct {p0, v7}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    :goto_3
    move v7, v6

    .line 757
    goto/16 :goto_0

    .line 751
    :cond_7
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-nez v5, :cond_8

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v5

    if-nez v5, :cond_8

    .line 752
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->startFadeOut(Lcom/android/camera/ui/PieItem;)V

    .line 753
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    goto :goto_3

    .line 755
    :cond_8
    iput-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    goto :goto_3

    .line 759
    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    :cond_9
    const/4 v5, 0x3

    if-ne v5, v0, :cond_c

    .line 760
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_b

    .line 761
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 763
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    .line 764
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 766
    :cond_c
    if-ne v10, v0, :cond_0

    .line 767
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->pulledToCenter(Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 768
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 770
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v5, :cond_d

    .line 771
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 773
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->closeOpenItem()Lcom/android/camera/ui/PieItem;

    .line 774
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 778
    :goto_4
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 776
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    goto :goto_4

    .line 781
    :cond_f
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 782
    .restart local v1    # "item":Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 783
    .local v2, "moved":Z
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eq v5, v1, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v5, :cond_10

    if-eqz v2, :cond_0

    .line 784
    :cond_10
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    if-eqz v2, :cond_11

    .line 788
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 790
    :cond_11
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->onEnterSelect(Lcom/android/camera/ui/PieItem;)V

    .line 791
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x190

    invoke-virtual {v5, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setBlockFocus(Z)V
    .locals 0
    .param p1, "blocked"    # Z

    .prologue
    .line 1001
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    .line 1005
    :cond_0
    return-void
.end method

.method public setBokehDegree(I)V
    .locals 5
    .param p1, "degree"    # I

    .prologue
    .line 289
    if-ltz p1, :cond_0

    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    .line 290
    div-int/lit8 v0, p1, 0xf

    .line 291
    .local v0, "index":I
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusIndex:I

    if-ne v2, v0, :cond_1

    .line 301
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v0    # "index":I
    :cond_1
    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusIndex:I

    .line 294
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusResId:Landroid/content/res/TypedArray;

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusIndex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 295
    .local v1, "resid":I
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    .line 299
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/RenderOverlay;->update()V

    goto :goto_0
.end method

.method public setBokehMode(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mIsBokehMode:Z

    .line 276
    iget-boolean v1, p0, Lcom/android/camera/ui/PieRenderer;->mIsBokehMode:Z

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusResId:Landroid/content/res/TypedArray;

    .line 279
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusResId:Landroid/content/res/TypedArray;

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 280
    .local v0, "resid":I
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    .line 285
    .end local v0    # "resid":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderOverlay;->update()V

    .line 286
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mBokehFocusCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public setCenter(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    .line 422
    iput p2, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    .line 423
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mSliceRadius:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mSliceCenterY:I

    .line 424
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mArcOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    .line 425
    return-void
.end method

.method public setFocus(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1009
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    .line 1010
    iput p2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    .line 1011
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    .line 1012
    return-void
.end method

.method public setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V
    .locals 0
    .param p1, "pl"    # Lcom/android/camera/ui/PieRenderer$PieListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

    .line 206
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressRenderer;->setProgress(I)V

    .line 391
    return-void
.end method

.method public showFail(Z)V
    .locals 3
    .param p1, "timeout"    # Z

    .prologue
    .line 1102
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1103
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 1105
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 1108
    :cond_0
    return-void
.end method

.method public showInCenter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 326
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iput-boolean v1, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 328
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 339
    :goto_0
    return-void

    .line 330
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-eqz v0, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 333
    :cond_1
    iput v3, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 334
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->resetPieCenter()V

    .line 335
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 336
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 337
    invoke-direct {p0, v2}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_0
.end method

.method public showStart()V
    .locals 7

    .prologue
    .line 1067
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1068
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 1069
    const/16 v1, 0x43

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    .line 1070
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRandomRange()I

    move-result v0

    .line 1071
    .local v0, "range":I
    const-wide/16 v2, 0x258

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v1

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/2addr v1, v0

    int-to-float v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 1073
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    goto :goto_0
.end method

.method public showSuccess(Z)V
    .locals 4
    .param p1, "timeout"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1078
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PieRenderer$6;-><init>(Lcom/android/camera/ui/PieRenderer;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/RenderOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_0

    .line 1092
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 1094
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 1095
    iput-boolean v3, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    goto :goto_0
.end method

.method public showsItems()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    return v0
.end method
