.class public final Lcom/android/camera/util/MotionEventHelper;
.super Ljava/lang/Object;
.source "MotionEventHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "e"    # Landroid/view/MotionEvent;
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/android/camera/util/MotionEventHelper;->transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private static transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "e"    # Landroid/view/MotionEvent;
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 16
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 17
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 18
    return-object v0
.end method
