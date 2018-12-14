.class Lcom/android/camera/ui/FilmStripView$MyController$2;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView$MyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FilmStripView$MyController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2148
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController$2;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$2;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2156
    :goto_0
    return-void

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$2;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v1, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2155
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$2;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    goto :goto_0
.end method
