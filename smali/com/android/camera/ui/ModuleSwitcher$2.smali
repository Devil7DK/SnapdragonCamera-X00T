.class Lcom/android/camera/ui/ModuleSwitcher$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ModuleSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModuleSwitcher;->animateHidePopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModuleSwitcher;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModuleSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModuleSwitcher;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher$2;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher$2;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher$2;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-static {v0}, Lcom/android/camera/ui/ModuleSwitcher;->access$100(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher$2;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-static {v0}, Lcom/android/camera/ui/ModuleSwitcher;->access$100(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher$2;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-static {v0}, Lcom/android/camera/ui/ModuleSwitcher;->access$200(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher$2;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-static {v1}, Lcom/android/camera/ui/ModuleSwitcher;->access$100(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher$2;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->access$102(Lcom/android/camera/ui/ModuleSwitcher;Landroid/view/View;)Landroid/view/View;

    .line 400
    :cond_0
    return-void
.end method
