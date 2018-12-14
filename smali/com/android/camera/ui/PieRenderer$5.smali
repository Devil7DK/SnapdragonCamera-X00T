.class Lcom/android/camera/ui/PieRenderer$5;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->openCurrentItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;

.field final synthetic val$ci:Lcom/android/camera/ui/PieItem;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$5;->this$0:Lcom/android/camera/ui/PieRenderer;

    iput-object p2, p0, Lcom/android/camera/ui/PieRenderer$5;->val$ci:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 968
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$5;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1202(Lcom/android/camera/ui/PieRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 958
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$5;->val$ci:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 959
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$5;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0, v2}, Lcom/android/camera/ui/PieRenderer;->access$1302(Lcom/android/camera/ui/PieRenderer;Z)Z

    .line 960
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 964
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 953
    return-void
.end method
