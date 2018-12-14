.class Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "FilmStripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;Lcom/android/camera/ui/FilmStripGestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FilmStripGestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/FilmStripGestureRecognizer$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmStripGestureRecognizer;)Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 117
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    .line 116
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;->onScale(FFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmStripGestureRecognizer;)Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 110
    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmStripGestureRecognizer;)Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;->onScaleEnd()V

    .line 123
    return-void
.end method
