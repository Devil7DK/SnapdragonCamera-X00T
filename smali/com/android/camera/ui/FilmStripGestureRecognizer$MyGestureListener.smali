.class Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FilmStripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;Lcom/android/camera/ui/FilmStripGestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FilmStripGestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/FilmStripGestureRecognizer$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmStripGestureRecognizer;)Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;->onDown(FF)Z

    .line 80
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmStripGestureRecognizer;)Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmStripGestureRecognizer;)Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method
