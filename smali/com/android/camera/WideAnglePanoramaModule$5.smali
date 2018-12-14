.class Lcom/android/camera/WideAnglePanoramaModule$5;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 9
    .param p1, "isFinished"    # Z
    .param p2, "panningRateX"    # F
    .param p3, "panningRateY"    # F
    .param p4, "progressX"    # F
    .param p5, "progressY"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v8, 0x43200000    # 160.0f

    .line 584
    iget-object v5, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v5}, Lcom/android/camera/WideAnglePanoramaModule;->access$2400(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v5

    mul-float v3, p4, v5

    .line 585
    .local v3, "accumulatedHorizontalAngle":F
    iget-object v5, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v5}, Lcom/android/camera/WideAnglePanoramaModule;->access$2500(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v5

    mul-float v4, p5, v5

    .line 586
    .local v4, "accumulatedVerticalAngle":F
    iget-object v5, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v5}, Lcom/android/camera/WideAnglePanoramaModule;->access$2600(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v7}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v7

    if-eq v5, v7, :cond_1

    const/4 v6, 0x1

    .line 587
    .local v6, "isRotated":Z
    :goto_0
    if-nez p1, :cond_0

    .line 588
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gez v5, :cond_0

    .line 589
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gez v5, :cond_0

    if-eqz v6, :cond_2

    .line 591
    :cond_0
    iget-object v5, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v5, v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$700(Lcom/android/camera/WideAnglePanoramaModule;Z)V

    .line 603
    :goto_1
    return-void

    .end local v6    # "isRotated":Z
    :cond_1
    move v6, v0

    .line 586
    goto :goto_0

    .line 593
    .restart local v6    # "isRotated":Z
    :cond_2
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$2400(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v0

    mul-float v1, p2, v0

    .line 594
    .local v1, "panningRateXInDegree":F
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$2500(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v0

    mul-float v2, p3, v0

    .line 595
    .local v2, "panningRateYInDegree":F
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v0

    const/16 v5, 0xb4

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v0

    const/16 v5, 0x5a

    if-ne v0, v5, :cond_4

    .line 596
    :cond_3
    neg-float v3, v3

    .line 597
    neg-float v4, v4

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v0

    const/high16 v5, 0x40200000    # 2.5f

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/WideAnglePanoramaUI;->updateCaptureProgress(FFFFF)V

    goto :goto_1
.end method
