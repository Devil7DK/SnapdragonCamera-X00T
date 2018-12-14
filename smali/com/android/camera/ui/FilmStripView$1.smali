.class Lcom/android/camera/ui/FilmStripView$1;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView;->init(Lcom/android/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$1;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$1;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 709
    return-void
.end method
