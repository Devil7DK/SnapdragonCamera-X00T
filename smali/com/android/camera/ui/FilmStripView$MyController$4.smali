.class Lcom/android/camera/ui/FilmStripView$MyController$4;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$focusX:F

.field final synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyController;Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iput-object p2, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

    iput p3, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->val$focusX:F

    iput p4, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->val$focusY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2249
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 2250
    .local v6, "newScale":F
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    div-float v3, v6, v0

    .line 2251
    .local v3, "postScale":F
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0, v6}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2252
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->val$focusX:F

    iget v2, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->val$focusY:F

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v4, v4, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyController$4;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v5, v5, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2253
    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 2252
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView$ViewItem;->postScale(FFFII)V

    .line 2254
    return-void
.end method
