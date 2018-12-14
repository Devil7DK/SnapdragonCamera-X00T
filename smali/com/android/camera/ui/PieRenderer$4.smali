.class Lcom/android/camera/ui/PieRenderer$4;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->moveSelection(Lcom/android/camera/ui/PieItem;Lcom/android/camera/ui/PieItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$4;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 930
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$4;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1102(Lcom/android/camera/ui/PieRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 918
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 922
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 926
    return-void
.end method
