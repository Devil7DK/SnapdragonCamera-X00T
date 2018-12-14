.class Lcom/android/camera/ui/PieRenderer$8;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private frames:J

.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$8;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1164
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 1165
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/camera/ui/PieRenderer$8;->frames:J

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1166
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$8;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->update()V

    .line 1167
    iget-wide v2, p0, Lcom/android/camera/ui/PieRenderer$8;->frames:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/PieRenderer$8;->frames:J

    .line 1168
    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer$8;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/camera/ui/PieRenderer;->access$1902(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1170
    :cond_0
    return-void
.end method
