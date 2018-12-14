.class public Lcom/android/camera/ui/FilmStripGestureRecognizer;
.super Ljava/lang/Object;
.source "FilmStripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;,
        Lcom/android/camera/ui/FilmStripGestureRecognizer$MyDoubleTapListener;,
        Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilmStripGestureRecognizer"


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mListener:Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    .line 48
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;Lcom/android/camera/ui/FilmStripGestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyDoubleTapListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyDoubleTapListener;-><init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;Lcom/android/camera/ui/FilmStripGestureRecognizer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 51
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/FilmStripGestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/FilmStripGestureRecognizer;Lcom/android/camera/ui/FilmStripGestureRecognizer$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 53
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FilmStripGestureRecognizer;)Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripGestureRecognizer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mListener:Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripGestureRecognizer;->mListener:Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;->onUp(FF)Z

    .line 61
    :cond_0
    return-void
.end method
