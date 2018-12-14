.class Lcom/android/camera/ui/CameraControls$1;
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
    .line 115
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v2, v2}, Lcom/android/camera/ui/CameraControls;->access$000(Lcom/android/camera/ui/CameraControls;FF)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$400(Lcom/android/camera/ui/CameraControls;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$700(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$800(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$900(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1602(Z)Z

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 177
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v2, v2}, Lcom/android/camera/ui/CameraControls;->access$000(Lcom/android/camera/ui/CameraControls;FF)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$400(Lcom/android/camera/ui/CameraControls;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$700(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$800(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$900(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1602(Z)Z

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 150
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$1;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 123
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    return-void
.end method
