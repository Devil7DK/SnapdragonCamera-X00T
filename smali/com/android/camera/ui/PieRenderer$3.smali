.class Lcom/android/camera/ui/PieRenderer$3;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->startFadeOut(Lcom/android/camera/ui/PieItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;

.field final synthetic val$item:Lcom/android/camera/ui/PieItem;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    iput-object p2, p0, Lcom/android/camera/ui/PieRenderer$3;->val$item:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 575
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->val$item:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->performClick()V

    .line 563
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$802(Lcom/android/camera/ui/PieRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 564
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$900(Lcom/android/camera/ui/PieRenderer;)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1000(Lcom/android/camera/ui/PieRenderer;Z)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setAlpha(F)V

    .line 567
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 571
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 558
    return-void
.end method
