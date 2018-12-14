.class Lcom/android/camera/PreviewGestures$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PreviewGestures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PreviewGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PreviewGestures;


# direct methods
.method constructor <init>(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isLeftSwipe(III)Z
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    sparse-switch p1, :sswitch_data_0

    .line 118
    if-gez p2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_4

    :cond_0
    :goto_0
    return v0

    .line 112
    :sswitch_0
    if-lez p3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 114
    :sswitch_1
    if-lez p2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 116
    :sswitch_2
    if-gez p3, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 118
    goto :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$000(Lcom/android/camera/PreviewGestures;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$200(Lcom/android/camera/PreviewGestures;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v5}, Lcom/android/camera/PreviewGestures;->access$000(Lcom/android/camera/PreviewGestures;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v5}, Lcom/android/camera/PreviewGestures;->access$400(Lcom/android/camera/PreviewGestures;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v0, v3

    .line 93
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v1, v3

    .line 95
    .local v1, "deltaY":I
    const/4 v2, 0x0

    .line 96
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->getOrientation()I

    move-result v2

    .line 99
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/PreviewGestures$1;->isLeftSwipe(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3, v4}, Lcom/android/camera/PreviewGestures;->access$602(Lcom/android/camera/PreviewGestures;Z)Z

    .line 101
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->openSettingsMenu()V

    :cond_3
    move v3, v4

    .line 103
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/camera/PreviewGestures$1;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$300(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/PreviewGestures$SingleTapListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/PreviewGestures$SingleTapListener;->onSingleTapUp(Landroid/view/View;II)V

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
