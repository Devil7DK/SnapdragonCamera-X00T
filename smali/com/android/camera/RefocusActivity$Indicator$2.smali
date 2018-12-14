.class Lcom/android/camera/RefocusActivity$Indicator$2;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RefocusActivity$Indicator;->startAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity$Indicator;


# direct methods
.method constructor <init>(Lcom/android/camera/RefocusActivity$Indicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/RefocusActivity$Indicator;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$Indicator$2;->this$0:Lcom/android/camera/RefocusActivity$Indicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator$2;->this$0:Lcom/android/camera/RefocusActivity$Indicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/RefocusActivity$Indicator;->setWillNotDraw(Z)V

    .line 460
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator$2;->this$0:Lcom/android/camera/RefocusActivity$Indicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/RefocusActivity$Indicator;->setWillNotDraw(Z)V

    .line 451
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 455
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator$2;->this$0:Lcom/android/camera/RefocusActivity$Indicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/RefocusActivity$Indicator;->setWillNotDraw(Z)V

    .line 446
    return-void
.end method
