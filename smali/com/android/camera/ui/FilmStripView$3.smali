.class Lcom/android/camera/ui/FilmStripView$3;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView;->animateItemRemoval(ILcom/android/camera/ui/FilmStripView$ImageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView;

.field final synthetic val$data:Lcom/android/camera/ui/FilmStripView$ImageData;

.field final synthetic val$removedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$ImageData;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$3;->this$0:Lcom/android/camera/ui/FilmStripView;

    iput-object p2, p0, Lcom/android/camera/ui/FilmStripView$3;->val$data:Lcom/android/camera/ui/FilmStripView$ImageData;

    iput-object p3, p0, Lcom/android/camera/ui/FilmStripView$3;->val$removedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1633
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$3;->this$0:Lcom/android/camera/ui/FilmStripView;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$3;->val$data:Lcom/android/camera/ui/FilmStripView$ImageData;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$3;->val$removedView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView;->access$700(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$ImageData;Landroid/view/View;)V

    .line 1628
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1638
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1623
    return-void
.end method
