.class Lcom/android/camera/ui/FilmStripView$MyController$7;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView$MyController;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/camera/ui/FilmStripView$MyController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2362
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController$7;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$7;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$7;->mCancelled:Z

    .line 2380
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2371
    iget-boolean v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$7;->mCancelled:Z

    if-nez v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$7;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2900(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2374
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$7;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$3102(Lcom/android/camera/ui/FilmStripView$MyController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2375
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2385
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2367
    return-void
.end method
