.class Lcom/android/camera/ui/PieRenderer$9;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;

.field final synthetic val$timeout:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$9;->this$0:Lcom/android/camera/ui/PieRenderer;

    iput-boolean p2, p0, Lcom/android/camera/ui/PieRenderer$9;->val$timeout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1190
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer$9;->val$timeout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$9;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$2000(Lcom/android/camera/ui/PieRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$9;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$9;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$1800(Lcom/android/camera/ui/PieRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/RenderOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1182
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1186
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1175
    return-void
.end method
