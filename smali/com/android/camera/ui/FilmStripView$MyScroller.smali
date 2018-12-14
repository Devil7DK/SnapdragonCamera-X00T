.class Lcom/android/camera/ui/FilmStripView$MyScroller;
.super Ljava/lang/Object;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

.field private mScrollChecker:Ljava/lang/Runnable;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mXScrollAnimator:Landroid/animation/ValueAnimator;

.field private mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2598
    new-instance v0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FilmStripView$MyScroller$1;-><init>(Lcom/android/camera/ui/FilmStripView$MyScroller;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScrollChecker:Ljava/lang/Runnable;

    .line 2612
    new-instance v0, Lcom/android/camera/ui/FilmStripView$MyScroller$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FilmStripView$MyScroller$2;-><init>(Lcom/android/camera/ui/FilmStripView$MyScroller;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2620
    new-instance v0, Lcom/android/camera/ui/FilmStripView$MyScroller$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FilmStripView$MyScroller$3;-><init>(Lcom/android/camera/ui/FilmStripView$MyScroller;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2646
    iput-object p2, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mHandler:Landroid/os/Handler;

    .line 2647
    iput-object p3, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mListener:Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    .line 2648
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    .line 2649
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    .line 2650
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2651
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2652
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2653
    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/FilmStripView$MyScroller;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyScroller;

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/FilmStripView$MyScroller;)Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyScroller;

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mListener:Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/FilmStripView$MyScroller;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView$MyScroller;

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private runChecker()V
    .locals 2

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mListener:Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    if-nez v0, :cond_1

    .line 2694
    :cond_0
    :goto_0
    return-void

    .line 2692
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2693
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public fling(IIIIIIII)V
    .locals 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2661
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyScroller;->runChecker()V

    .line 2662
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2683
    if-eqz p1, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2686
    :cond_0
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2666
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView$MyScroller;->runChecker()V

    .line 2667
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2672
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2673
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int v3, p1, p3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2674
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2675
    return-void
.end method
