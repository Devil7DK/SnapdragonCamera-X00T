.class Lcom/android/camera/ui/FilmStripView$MyScroller$3;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView$MyScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmStripView$MyScroller;

    .prologue
    .line 2621
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$3;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2625
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$3;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3500(Lcom/android/camera/ui/FilmStripView$MyScroller;)Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;->onScrollEnd()V

    .line 2630
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2635
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2640
    return-void
.end method
