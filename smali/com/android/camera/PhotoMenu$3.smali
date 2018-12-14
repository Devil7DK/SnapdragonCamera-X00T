.class Lcom/android/camera/PhotoMenu$3;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->closeSceneMode()V

    .line 585
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoMenu;->access$302(Lcom/android/camera/PhotoMenu;I)I

    .line 587
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->closeSceneMode()V

    .line 579
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoMenu;->access$302(Lcom/android/camera/PhotoMenu;I)I

    .line 580
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 574
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 569
    return-void
.end method
