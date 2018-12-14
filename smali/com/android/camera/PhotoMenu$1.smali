.class Lcom/android/camera/PhotoMenu$1;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->animateFadeOut(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    iput p2, p0, Lcom/android/camera/PhotoMenu$1;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 383
    iget v0, p0, Lcom/android/camera/PhotoMenu$1;->val$level:I

    if-ne v0, v2, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel1()V

    .line 385
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 386
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    .line 387
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->cleanupListview()V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoMenu$1;->val$level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel2()V

    .line 391
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 369
    iget v0, p0, Lcom/android/camera/PhotoMenu$1;->val$level:I

    if-ne v0, v2, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel1()V

    .line 371
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 372
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    .line 373
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->cleanupListview()V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoMenu$1;->val$level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel2()V

    .line 377
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 360
    return-void
.end method
