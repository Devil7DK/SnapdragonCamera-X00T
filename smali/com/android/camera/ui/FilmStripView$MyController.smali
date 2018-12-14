.class Lcom/android/camera/ui/FilmStripView$MyController;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyController"
.end annotation


# instance fields
.field private mCanStopScroll:Z

.field private mFlingAnimator:Landroid/animation/AnimatorSet;

.field private final mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mScroller:Lcom/android/camera/ui/FilmStripView$MyScroller;

.field private final mScrollerListener:Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

.field private mZoomAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2159
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2118
    new-instance v1, Lcom/android/camera/ui/FilmStripView$MyController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilmStripView$MyController$1;-><init>(Lcom/android/camera/ui/FilmStripView$MyController;)V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScrollerListener:Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    .line 2147
    new-instance v1, Lcom/android/camera/ui/FilmStripView$MyController$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilmStripView$MyController$2;-><init>(Lcom/android/camera/ui/FilmStripView$MyController;)V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2160
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 2161
    .local v0, "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v1, Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {p1}, Lcom/android/camera/ui/FilmStripView;->access$800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    .line 2162
    invoke-static {p1}, Lcom/android/camera/ui/FilmStripView;->access$800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScrollerListener:Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/ui/FilmStripView$MyScroller;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScroller:Lcom/android/camera/ui/FilmStripView$MyScroller;

    .line 2164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mCanStopScroll:Z

    .line 2166
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 2167
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2168
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2169
    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScale()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/camera/ui/FilmStripView$MyController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;
    .param p1, "x1"    # Z

    .prologue
    .line 2109
    iput-boolean p1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mCanStopScroll:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->enterFullScreen()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->loadZoomedImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->cancelZoomAnimation()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/ui/FilmStripView$MyController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/camera/ui/FilmStripView$MyController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/FilmStripView$MyController;Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;
    .param p1, "x1"    # Lcom/android/camera/ui/FilmStripView$ViewItem;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 2109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FilmStripView$MyController;->zoomAt(Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->cancelFlingAnimation()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/ui/FilmStripView$MyController;Z)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;
    .param p1, "x1"    # Z

    .prologue
    .line 2109
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView$MyController;->getCurrentDataMaxScale(Z)F

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->leaveFullScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->cancelLoadingZoomedImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyController;
    .param p1, "x1"    # Z

    .prologue
    .line 2109
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView$MyController;->setSurroundingViewsVisible(Z)V

    return-void
.end method

.method private cancelFlingAnimation()V
    .locals 1

    .prologue
    .line 2471
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->isFlingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2474
    :cond_0
    return-void
.end method

.method private cancelLoadingZoomedImage()V
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    .line 2563
    return-void
.end method

.method private cancelZoomAnimation()V
    .locals 1

    .prologue
    .line 2477
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2480
    :cond_0
    return-void
.end method

.method private enterFullScreen()V
    .locals 3

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFullScreenChange(IZ)V

    .line 2486
    :cond_0
    return-void
.end method

.method private estimateMaxX(III)I
    .locals 2
    .param p1, "dataID"    # I
    .param p2, "leftPos"    # I
    .param p3, "viewWidth"    # I

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2187
    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2188
    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2400(Lcom/android/camera/ui/FilmStripView;)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method private estimateMinX(III)I
    .locals 2
    .param p1, "dataID"    # I
    .param p2, "leftPos"    # I
    .param p3, "viewWidth"    # I

    .prologue
    .line 2182
    add-int/lit8 v0, p1, 0x64

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2400(Lcom/android/camera/ui/FilmStripView;)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/2addr v0, v1

    sub-int v0, p2, v0

    return v0
.end method

.method private getCurrentContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 2507
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 2508
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v0, :cond_0

    .line 2509
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2511
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentDataMaxScale(Z)F
    .locals 6
    .param p1, "allowOverScale"    # Z

    .prologue
    .line 2520
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v0, v4, v5

    .line 2521
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v1

    .line 2522
    .local v1, "imageData":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-eqz v0, :cond_0

    const/4 v4, 0x4

    .line 2523
    invoke-interface {v1, v4}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2524
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2537
    :cond_1
    :goto_0
    return v3

    .line 2526
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 2527
    .local v2, "imageWidth":F
    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getOrientation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_3

    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getOrientation()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_4

    .line 2528
    :cond_3
    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getHeight()I

    move-result v4

    int-to-float v2, v4

    .line 2530
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v2, v4

    .line 2531
    .local v3, "scale":F
    if-eqz p1, :cond_1

    .line 2535
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$3200(Lcom/android/camera/ui/FilmStripView;)F

    move-result v4

    mul-float/2addr v3, v4

    goto :goto_0
.end method

.method private leaveFullScreen()V
    .locals 3

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFullScreenChange(IZ)V

    .line 2504
    :cond_0
    return-void
.end method

.method private loadZoomedImage()V
    .locals 7

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2559
    :cond_0
    :goto_0
    return-void

    .line 2544
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v0, v5, v6

    .line 2545
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v0, :cond_0

    .line 2548
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v1

    .line 2549
    .local v1, "imageData":Lcom/android/camera/ui/FilmStripView$ImageData;
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2552
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->getCurrentContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 2553
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getViewRect()Landroid/graphics/RectF;

    move-result-object v4

    .line 2554
    .local v4, "viewRect":Landroid/graphics/RectF;
    if-eqz v3, :cond_0

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, v5, :cond_0

    .line 2557
    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getOrientation()I

    move-result v2

    .line 2558
    .local v2, "orientation":I
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v4}, Lcom/android/camera/ui/ZoomView;->loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private scaleTo(FI)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x2

    .line 2434
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2441
    :goto_0
    return-void

    .line 2437
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScale()V

    .line 2438
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2439
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2440
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setSurroundingViewsVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x2

    .line 2492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 2493
    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 2492
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2496
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    goto :goto_2

    .line 2498
    :cond_3
    return-void
.end method

.method private stopScale()V
    .locals 1

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2403
    return-void
.end method

.method private zoomAt(Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V
    .locals 8
    .param p1, "current"    # Lcom/android/camera/ui/FilmStripView$ViewItem;
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    const/4 v4, 0x0

    .line 2194
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 2198
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/camera/ui/FilmStripView$MyController;->getCurrentDataMaxScale(Z)F

    move-result v6

    .line 2199
    .local v6, "maxScale":F
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v6

    sub-float v1, v6, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v2, v6

    .line 2202
    .local v2, "endScale":F
    :goto_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    .line 2203
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v3

    aput v3, v1, v4

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2204
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2205
    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/FilmStripView$MyController$3;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView$MyController$3;-><init>(Lcom/android/camera/ui/FilmStripView$MyController;FLcom/android/camera/ui/FilmStripView$ViewItem;FF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2246
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/FilmStripView$MyController$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ui/FilmStripView$MyController$4;-><init>(Lcom/android/camera/ui/FilmStripView$MyController;Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2256
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2257
    return-void

    .line 2199
    .end local v2    # "endScale":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public fling(F)V
    .locals 12
    .param p1, "velocityX"    # F

    .prologue
    const/4 v2, 0x0

    .line 2276
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v9, v0, v1

    .line 2280
    .local v9, "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v9, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    div-float v10, p1, v0

    .line 2285
    .local v10, "scaledVelocityX":F
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_2

    .line 2288
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    .line 2291
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getWidth()I

    move-result v11

    .line 2295
    .local v11, "w":I
    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v0

    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v1

    invoke-direct {p0, v0, v1, v11}, Lcom/android/camera/ui/FilmStripView$MyController;->estimateMinX(III)I

    move-result v5

    .line 2298
    .local v5, "minX":I
    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v0

    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v1

    invoke-direct {p0, v0, v1, v11}, Lcom/android/camera/ui/FilmStripView$MyController;->estimateMaxX(III)I

    move-result v6

    .line 2299
    .local v6, "maxX":I
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScroller:Lcom/android/camera/ui/FilmStripView$MyScroller;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v1

    neg-float v3, p1

    float-to-int v3, v3

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/ui/FilmStripView$MyScroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method public flingInsideZoomView(FF)V
    .locals 14
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 2304
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2388
    :cond_0
    :goto_0
    return-void

    .line 2308
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v8}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v0, v8, v9

    .line 2309
    .local v0, "current":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v0, :cond_0

    .line 2313
    const/4 v4, 0x4

    .line 2329
    .local v4, "factor":I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2331
    .local v7, "velocity":F
    const-wide v8, 0x3fa99999a0000000L    # 0.05000000074505806

    float-to-double v10, v7

    const-wide v12, 0x3fd5555560000000L    # 0.3333333432674408

    .line 2332
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v3, v8

    .line 2334
    .local v3, "duration":F
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationX()F

    move-result v5

    .line 2335
    .local v5, "translationX":F
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationY()F

    move-result v6

    .line 2337
    .local v6, "translationY":F
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, v3, v10

    mul-float/2addr v10, p1

    add-float/2addr v10, v5

    aput v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2339
    .local v1, "decelerationX":Landroid/animation/ValueAnimator;
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, v3, v10

    mul-float v10, v10, p2

    add-float/2addr v10, v6

    aput v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2342
    .local v2, "decelerationY":Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/android/camera/ui/FilmStripView$MyController$5;

    invoke-direct {v8, p0, v1, v2, v0}, Lcom/android/camera/ui/FilmStripView$MyController$5;-><init>(Lcom/android/camera/ui/FilmStripView$MyController;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/FilmStripView$ViewItem;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2353
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    .line 2354
    iget-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2355
    iget-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2356
    iget-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/camera/ui/FilmStripView$MyController$6;

    invoke-direct {v9, p0}, Lcom/android/camera/ui/FilmStripView$MyController$6;-><init>(Lcom/android/camera/ui/FilmStripView$MyController;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2362
    iget-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/camera/ui/FilmStripView$MyController$7;

    invoke-direct {v9, p0}, Lcom/android/camera/ui/FilmStripView$MyController$7;-><init>(Lcom/android/camera/ui/FilmStripView$MyController;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2387
    iget-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public goToFilmStrip()V
    .locals 6

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2445
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v1, v5}, Lcom/android/camera/ui/FilmStripView$MyController;->scaleTo(FI)V

    .line 2447
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .line 2448
    .local v0, "nextItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2449
    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 2452
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    invoke-virtual {p0, v1, v5, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2455
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2456
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFullScreenChange(IZ)V

    .line 2458
    :cond_1
    return-void
.end method

.method public goToFirstItem()V
    .locals 1

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$3300(Lcom/android/camera/ui/FilmStripView;)V

    .line 2570
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1000(Lcom/android/camera/ui/FilmStripView;)V

    .line 2571
    return-void
.end method

.method public goToFullScreen()V
    .locals 2

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    :goto_0
    return-void

    .line 2465
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->enterFullScreen()V

    .line 2466
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->scaleTo(FI)V

    goto :goto_0
.end method

.method public goToNextItem()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2419
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v0, v3, v4

    .line 2420
    .local v0, "nextItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v0, :cond_0

    .line 2430
    :goto_0
    return v1

    .line 2423
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    .line 2424
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v3

    const/16 v4, 0x320

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2426
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2428
    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v3, 0x190

    invoke-direct {p0, v1, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scaleTo(FI)V

    :cond_1
    move v1, v2

    .line 2430
    goto :goto_0
.end method

.method public isFlingAnimationRunning()Z
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScroller:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimationRunning()Z
    .locals 1

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomStarted()Z
    .locals 2

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scroll(F)V
    .locals 3
    .param p1, "deltaX"    # F

    .prologue
    .line 2261
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2272
    :goto_0
    return-void

    .line 2264
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/FilmStripView;->access$1602(Lcom/android/camera/ui/FilmStripView;I)I

    .line 2266
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1700(Lcom/android/camera/ui/FilmStripView;)Z

    move-result v0

    .line 2267
    .local v0, "stopScroll":Z
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/FilmStripView;->access$1800(Lcom/android/camera/ui/FilmStripView;I)V

    .line 2268
    if-eqz v0, :cond_1

    .line 2269
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    .line 2271
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    goto :goto_0
.end method

.method public scrollToPosition(IIZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "duration"    # I
    .param p3, "interruptible"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 2407
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v6

    if-nez v0, :cond_0

    .line 2415
    :goto_0
    return-void

    .line 2410
    :cond_0
    iput-boolean p3, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mCanStopScroll:Z

    .line 2411
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScroller:Lcom/android/camera/ui/FilmStripView$MyScroller;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v3

    sub-int v3, p1, v3

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView$MyScroller;->startScroll(IIIII)V

    .line 2414
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView;->access$1800(Lcom/android/camera/ui/FilmStripView;I)V

    goto :goto_0
.end method

.method public stopScrolling(Z)Z
    .locals 2
    .param p1, "forced"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2392
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$MyController;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2398
    :goto_0
    return v0

    .line 2394
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mCanStopScroll:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 2395
    const/4 v0, 0x0

    goto :goto_0

    .line 2397
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController;->mScroller:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FilmStripView$MyScroller;->forceFinished(Z)V

    goto :goto_0
.end method
