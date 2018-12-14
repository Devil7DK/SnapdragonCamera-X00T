.class Lcom/android/camera/RefocusActivity$Indicator$1;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 435
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$Indicator$1;->this$0:Lcom/android/camera/RefocusActivity$Indicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator$1;->this$0:Lcom/android/camera/RefocusActivity$Indicator;

    invoke-virtual {v0}, Lcom/android/camera/RefocusActivity$Indicator;->invalidate()V

    .line 439
    return-void
.end method
