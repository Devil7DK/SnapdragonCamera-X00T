.class Lcom/android/camera/ui/CameraControls$2;
.super Ljava/lang/Object;
.source "CameraControls.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraControls;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraControls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1602(Z)Z

    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v1, v1}, Lcom/android/camera/ui/CameraControls;->access$000(Lcom/android/camera/ui/CameraControls;FF)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 206
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1602(Z)Z

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v1, v1}, Lcom/android/camera/ui/CameraControls;->access$000(Lcom/android/camera/ui/CameraControls;FF)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 199
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 187
    return-void
.end method
