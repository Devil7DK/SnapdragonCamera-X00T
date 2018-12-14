.class Lcom/android/camera/VideoMenu$2;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoMenu;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    iput p2, p0, Lcom/android/camera/VideoMenu$2;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 303
    iget v0, p0, Lcom/android/camera/VideoMenu$2;->val$level:I

    if-ne v0, v2, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel1()V

    .line 305
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 306
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    .line 307
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->cleanupListview()V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoMenu$2;->val$level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel2()V

    .line 311
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0, v2}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 289
    iget v0, p0, Lcom/android/camera/VideoMenu$2;->val$level:I

    if-ne v0, v2, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel1()V

    .line 291
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 292
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    .line 293
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->cleanupListview()V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoMenu$2;->val$level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel2()V

    .line 297
    iget-object v0, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0, v2}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 285
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 280
    return-void
.end method
