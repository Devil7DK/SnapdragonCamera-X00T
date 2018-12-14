.class Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureReceiver"
.end annotation


# instance fields
.field private mMaxScale:F

.field private mScaleTrend:F

.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0

    .prologue
    .line 2697
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p2, "x1"    # Lcom/android/camera/ui/FilmStripView$1;

    .prologue
    .line 2697
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;-><init>(Lcom/android/camera/ui/FilmStripView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2723
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 2724
    .local v0, "current":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView;->inFilmStrip()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 2725
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    .line 2738
    :goto_0
    return v1

    .line 2727
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 2728
    goto :goto_0

    .line 2730
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    .line 2731
    goto :goto_0

    .line 2733
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2734
    goto :goto_0

    .line 2736
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera/ui/FilmStripView$Listener;->setSystemDecorsVisibility(Z)V

    .line 2737
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-static {v2, v0, p1, p2}, Lcom/android/camera/ui/FilmStripView$MyController;->access$3700(Lcom/android/camera/ui/FilmStripView$MyController;Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V

    goto :goto_0
.end method

.method public onDown(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 2743
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$400(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2744
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(FF)Z
    .locals 9
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/16 v8, 0x190

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2895
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/PreviewGestures;->waitUntilNextDown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2956
    :cond_0
    :goto_0
    return v4

    .line 2897
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v0, v6, v7

    .line 2898
    .local v0, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v0, :cond_0

    .line 2901
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->canSwipeInFullScreen(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2904
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2906
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/camera/ui/FilmStripView$MyController;->flingInsideZoomView(FF)V

    move v4, v5

    .line 2907
    goto :goto_0

    .line 2909
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    move v4, v5

    .line 2911
    goto :goto_0

    .line 2916
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 2917
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    .line 2919
    .local v1, "currItemCenterX":I
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_7

    .line 2920
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    if-le v6, v1, :cond_4

    .line 2922
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4, v1, v8, v5}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    move v4, v5

    .line 2924
    goto :goto_0

    .line 2926
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v3, v6, v5

    .line 2927
    .local v3, "prevItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v3, :cond_0

    .line 2930
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    .line 2931
    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    .line 2930
    invoke-virtual {v4, v6, v8, v5}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2953
    .end local v1    # "currItemCenterX":I
    .end local v3    # "prevItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_6

    .line 2954
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/ui/FilmStripView$MyController;->fling(F)V

    :cond_6
    move v4, v5

    .line 2956
    goto/16 :goto_0

    .line 2933
    .restart local v1    # "currItemCenterX":I
    :cond_7
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2934
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    if-ge v6, v1, :cond_8

    .line 2936
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4, v1, v8, v5}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    move v4, v5

    .line 2938
    goto/16 :goto_0

    .line 2940
    :cond_8
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v2, v6, v7

    .line 2941
    .local v2, "nextItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v2, :cond_0

    .line 2944
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    .line 2945
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    .line 2944
    invoke-virtual {v4, v6, v8, v5}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2946
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 2947
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    goto :goto_1
.end method

.method public onScale(FFF)Z
    .locals 9
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2975
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3017
    :goto_0
    return v1

    .line 2979
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v4

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v4, p3

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    .line 2980
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    mul-float v6, v2, p3

    .line 2981
    .local v6, "newScale":F
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    cmpg-float v2, v6, v5

    if-gez v2, :cond_2

    .line 2984
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, v6}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2985
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_1

    .line 2986
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, v8}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2988
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    :goto_1
    move v1, v7

    .line 3017
    goto :goto_0

    .line 2989
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    cmpl-float v2, v6, v5

    if-ltz v2, :cond_3

    .line 2991
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2, v5}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2992
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2600(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2993
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 2994
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    goto :goto_1

    .line 2995
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_4

    cmpg-float v2, v6, v5

    if-gez v2, :cond_4

    .line 2997
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, v6}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2998
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$4500(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2999
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 3000
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    goto :goto_1

    .line 3004
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3005
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    .line 3007
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 3009
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mMaxScale:F

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 3010
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v1

    cmpl-float v1, v6, v1

    if-nez v1, :cond_6

    move v1, v7

    .line 3011
    goto/16 :goto_0

    .line 3013
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v1

    div-float v3, v6, v1

    .line 3014
    .local v3, "postScale":F
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView$ViewItem;->postScale(FFFII)V

    .line 3015
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, v6}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    goto/16 :goto_1
.end method

.method public onScaleBegin(FF)Z
    .locals 3
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2961
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2962
    const/4 v0, 0x0

    .line 2970
    :goto_0
    return v0

    .line 2965
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$4300(Lcom/android/camera/ui/FilmStripView;)V

    .line 2966
    iput v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    .line 2969
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/camera/ui/FilmStripView$MyController;->access$4400(Lcom/android/camera/ui/FilmStripView$MyController;Z)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mMaxScale:F

    goto :goto_0
.end method

.method public onScaleEnd()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3022
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3038
    :goto_0
    return-void

    .line 3025
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    .line 3026
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 3027
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    .line 3037
    :goto_1
    iput v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    goto :goto_0

    .line 3028
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 3029
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3030
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 3031
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$3300(Lcom/android/camera/ui/FilmStripView;)V

    .line 3033
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    goto :goto_1

    .line 3035
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    goto :goto_1
.end method

.method public onScroll(FFFF)Z
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 2828
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PreviewGestures;->waitUntilNextDown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2829
    const/4 v5, 0x0

    .line 2890
    :goto_0
    return v5

    .line 2830
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v9, v5, v6

    .line 2831
    .local v9, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v9, :cond_1

    .line 2832
    const/4 v5, 0x0

    goto :goto_0

    .line 2834
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v5

    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->canSwipeInFullScreen(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2835
    const/4 v5, 0x0

    goto :goto_0

    .line 2837
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$4300(Lcom/android/camera/ui/FilmStripView;)V

    .line 2839
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v2, v5, v6

    .line 2841
    .local v2, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationX()F

    move-result v5

    sub-float v3, v5, p3

    .line 2842
    .local v3, "transX":F
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationY()F

    move-result v5

    sub-float v4, v5, p4

    .line 2843
    .local v4, "transY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v7}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2844
    invoke-static {v8}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 2843
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/ui/FilmStripView$ViewItem;->updateTransform(FFFFII)V

    .line 2845
    const/4 v5, 0x1

    goto :goto_0

    .line 2847
    .end local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .end local v3    # "transX":F
    .end local v4    # "transY":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v5

    div-float v5, p3, v5

    float-to-int v11, v5

    .line 2849
    .local v11, "deltaX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    .line 2850
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$3800(Lcom/android/camera/ui/FilmStripView;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2851
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ui/FilmStripView;->access$3802(Lcom/android/camera/ui/FilmStripView;Z)Z

    .line 2852
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/ui/FilmStripView;->access$4102(Lcom/android/camera/ui/FilmStripView;I)I

    .line 2854
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FilmStripView;->inFilmStrip()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2855
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 2856
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v5

    int-to-float v6, v11

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/FilmStripView$MyController;->scroll(F)V

    .line 2888
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 2890
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2859
    :cond_6
    const/4 v12, 0x0

    .line 2860
    .local v12, "hit":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2861
    .local v13, "hitRect":Landroid/graphics/Rect;
    :goto_2
    const/4 v5, 0x5

    if-ge v12, v5, :cond_9

    .line 2862
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    if-nez v5, :cond_8

    .line 2861
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2865
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    invoke-virtual {v5}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2866
    move/from16 v0, p1

    float-to-int v5, v0

    move/from16 v0, p2

    float-to-int v6, v0

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2870
    :cond_9
    const/4 v5, 0x5

    if-ne v12, v5, :cond_a

    .line 2871
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2874
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v12

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v10

    .line 2875
    .local v10, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getScaledTranslationY(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v6

    div-float v6, p4, v6

    sub-float v4, v5, v6

    .line 2876
    .restart local v4    # "transY":F
    const/4 v5, 0x2

    invoke-interface {v10, v5}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_b

    .line 2877
    const/4 v4, 0x0

    .line 2879
    :cond_b
    const/4 v5, 0x1

    invoke-interface {v10, v5}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_c

    .line 2880
    const/4 v4, 0x0

    .line 2882
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationY(FF)V

    goto/16 :goto_1

    .line 2884
    .end local v4    # "transY":F
    .end local v10    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    .end local v12    # "hit":I
    .end local v13    # "hitRect":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2886
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v5

    int-to-double v6, v11

    const-wide v14, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v14

    double-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/FilmStripView$MyController;->scroll(F)V

    goto/16 :goto_1
.end method

.method public onSingleTapUp(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 2704
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 2705
    .local v0, "centerItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView;->inFilmStrip()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2706
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->areaContains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2707
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    .line 2718
    :goto_0
    return v2

    .line 2710
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2711
    const/4 v1, -0x1

    .line 2712
    .local v1, "dataID":I
    if-eqz v0, :cond_1

    .line 2713
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    .line 2715
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/ui/FilmStripView$Listener;->onToggleSystemDecorsVisibility(I)V

    goto :goto_0

    .line 2718
    .end local v1    # "dataID":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onUp(FF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2753
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v1, v6, v7

    .line 2754
    .local v1, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v1, :cond_0

    .line 2755
    const/4 v6, 0x0

    .line 2823
    :goto_0
    return v6

    .line 2757
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomAnimationRunning()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->isFlingAnimationRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2758
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2760
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2761
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2900(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2762
    const/4 v6, 0x1

    goto :goto_0

    .line 2764
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 2765
    .local v2, "halfH":F
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/camera/ui/FilmStripView;->access$3802(Lcom/android/camera/ui/FilmStripView;Z)Z

    .line 2767
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v6, 0x5

    if-ge v3, v6, :cond_8

    .line 2768
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v3

    if-nez v6, :cond_5

    .line 2767
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2771
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v7}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getScaledTranslationY(F)F

    move-result v5

    .line 2772
    .local v5, "transY":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4

    .line 2775
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v4

    .line 2777
    .local v4, "id":I
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v6

    const/4 v7, 0x2

    .line 2778
    invoke-interface {v6, v7}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_6

    cmpl-float v6, v5, v2

    if-lez v6, :cond_6

    .line 2780
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6, v3, v4}, Lcom/android/camera/ui/FilmStripView;->access$3900(Lcom/android/camera/ui/FilmStripView;II)V

    goto :goto_2

    .line 2781
    :cond_6
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v6

    const/4 v7, 0x1

    .line 2782
    invoke-interface {v6, v7}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_7

    neg-float v6, v2

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7

    .line 2784
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6, v3, v4}, Lcom/android/camera/ui/FilmStripView;->access$4000(Lcom/android/camera/ui/FilmStripView;II)V

    goto :goto_2

    .line 2787
    :cond_7
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    .line 2788
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2789
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x190

    .line 2790
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 2791
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 2795
    .end local v4    # "id":I
    .end local v5    # "transY":F
    :cond_8
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v0

    .line 2796
    .local v0, "currId":I
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v7

    add-int/lit16 v7, v7, 0x12c

    if-le v6, v7, :cond_9

    if-nez v0, :cond_9

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2798
    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2799
    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$4100(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    if-nez v6, :cond_9

    .line 2800
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    .line 2802
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    if-eqz v6, :cond_a

    .line 2803
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2804
    invoke-static {v7}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v7

    const/16 v8, 0x190

    const/4 v9, 0x0

    .line 2803
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2810
    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v7

    if-ne v6, v7, :cond_b

    if-nez v0, :cond_b

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2811
    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 2812
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    .line 2823
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2808
    :cond_a
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2100(Lcom/android/camera/ui/FilmStripView;)V

    goto :goto_3

    .line 2814
    :cond_b
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$4100(Lcom/android/camera/ui/FilmStripView;)I

    move-result v6

    if-nez v6, :cond_c

    if-eqz v0, :cond_c

    .line 2818
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    .line 2819
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6, v0}, Lcom/android/camera/ui/FilmStripView;->access$4102(Lcom/android/camera/ui/FilmStripView;I)I

    .line 2821
    :cond_c
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2100(Lcom/android/camera/ui/FilmStripView;)V

    goto :goto_4
.end method
