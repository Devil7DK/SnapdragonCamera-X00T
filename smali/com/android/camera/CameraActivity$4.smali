.class Lcom/android/camera/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCameraPreview(I)Z
    .locals 4
    .param p1, "dataID"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 449
    iget-object v3, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 450
    .local v0, "localData":Lcom/android/camera/data/LocalData;
    if-nez v0, :cond_0

    .line 451
    const-string v1, "CAM_Activity"

    const-string v3, "Current data ID not found."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onCurrentDataCentered(I)V
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    .line 465
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->isCameraPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1200(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1000(Lcom/android/camera/CameraActivity;Z)V

    .line 472
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 473
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFullScreen()V

    goto :goto_0
.end method

.method public onCurrentDataOffCentered(I)V
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    .line 479
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->isCameraPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1200(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1000(Lcom/android/camera/CameraActivity;Z)V

    goto :goto_0
.end method

.method public onDataDemoted(I)V
    .locals 7
    .param p1, "dataID"    # I

    .prologue
    .line 415
    const-string v1, "Camera"

    const-string v2, "Delete"

    const-string v3, "demoted"

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    .line 417
    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)V

    .line 420
    return-void
.end method

.method public onDataFocusChanged(IZ)V
    .locals 7
    .param p1, "dataID"    # I
    .param p2, "focused"    # Z

    .prologue
    const/4 v6, 0x1

    .line 491
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->isCameraPreview(I)Z

    move-result v1

    .line 492
    .local v1, "isPreview":Z
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v0

    .line 493
    .local v0, "isFullScreen":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CameraActivity$4$1;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraActivity$4$1;-><init>(Lcom/android/camera/CameraActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CameraActivity$4$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/camera/CameraActivity$4$2;-><init>(Lcom/android/camera/CameraActivity$4;IZ)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method public onDataFullScreenChange(IZ)V
    .locals 5
    .param p1, "dataID"    # I
    .param p2, "full"    # Z

    .prologue
    const/4 v4, 0x1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->isCameraPreview(I)Z

    move-result v0

    .line 425
    .local v0, "isCameraID":Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 428
    :cond_0
    if-nez v0, :cond_1

    .line 429
    if-nez p2, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;ZZ)V

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$700(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onDataPromoted(I)V
    .locals 7
    .param p1, "dataID"    # I

    .prologue
    .line 406
    const-string v1, "Camera"

    const-string v2, "Delete"

    const-string v3, "promoted"

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    .line 408
    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)V

    .line 411
    return-void
.end method

.method public onReload()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1000(Lcom/android/camera/CameraActivity;Z)V

    .line 460
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 461
    return-void
.end method

.method public onToggleSystemDecorsVisibility(I)V
    .locals 3
    .param p1, "dataID"    # I

    .prologue
    const/4 v2, 0x1

    .line 562
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$700(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->isCameraPreview(I)Z

    move-result v0

    .line 567
    .local v0, "isCameraID":Z
    if-nez v0, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1, v2, v2}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;ZZ)V

    goto :goto_0
.end method

.method public setSystemDecorsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 576
    return-void
.end method
