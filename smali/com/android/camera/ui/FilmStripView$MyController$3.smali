.class Lcom/android/camera/ui/FilmStripView$MyController$3;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView$MyController;->zoomAt(Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FilmStripView$MyController;

.field final synthetic val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

.field final synthetic val$endScale:F

.field final synthetic val$focusX:F

.field final synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyController;FLcom/android/camera/ui/FilmStripView$ViewItem;FF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2205
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iput p2, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$endScale:F

    iput-object p3, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

    iput p4, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$focusX:F

    iput p5, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$focusY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2238
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$endScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$focusX:F

    iget v2, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$focusY:F

    iget v3, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$endScale:F

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v4, v4, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v4, v4, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v5, v5, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2221
    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 2220
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView$ViewItem;->postScale(FFFII)V

    .line 2222
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    iget v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$endScale:F

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2225
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2226
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    .line 2227
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 2228
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->resetTransform()V

    .line 2232
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$3002(Lcom/android/camera/ui/FilmStripView$MyController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2233
    return-void

    .line 2230
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2900(Lcom/android/camera/ui/FilmStripView$MyController;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2243
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2600(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2210
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$3;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->access$500(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2213
    return-void
.end method
