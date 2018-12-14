.class Lcom/android/camera/CameraActivity$4$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$4;->onDataFocusChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$4;

.field final synthetic val$dataID:I

.field final synthetic val$focused:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$4;IZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$4;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iput p2, p0, Lcom/android/camera/CameraActivity$4$2;->val$dataID:I

    iput-boolean p3, p0, Lcom/android/camera/CameraActivity$4$2;->val$focused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 513
    iget-object v6, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v6, v6, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/CameraActivity$4$2;->val$dataID:I

    invoke-interface {v6, v7}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v1

    .line 514
    .local v1, "currentData":Lcom/android/camera/data/LocalData;
    if-nez v1, :cond_0

    .line 515
    const-string v4, "CAM_Activity"

    const-string v5, "Current data ID not found."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    .line 554
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 521
    .local v2, "isCameraID":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/camera/CameraActivity$4$2;->val$focused:Z

    if-nez v6, :cond_3

    .line 522
    if-eqz v2, :cond_1

    .line 523
    iget-object v6, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v6, v6, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/camera/CameraModule;->onPreviewFocusChanged(Z)V

    .line 524
    iget-object v5, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v5, v5, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5, v4}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 526
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    goto :goto_0

    .end local v2    # "isCameraID":Z
    :cond_2
    move v2, v5

    .line 519
    goto :goto_1

    .line 528
    .restart local v2    # "isCameraID":Z
    :cond_3
    if-eqz v2, :cond_5

    .line 531
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 533
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 534
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)V

    .line 540
    :cond_4
    :goto_2
    invoke-interface {v1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 541
    .local v0, "contentUri":Landroid/net/Uri;
    if-nez v0, :cond_6

    .line 542
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    goto :goto_0

    .line 537
    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_5
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    iget v5, p0, Lcom/android/camera/CameraActivity$4$2;->val$dataID:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraActivity;->access$1600(Lcom/android/camera/CameraActivity;I)V

    goto :goto_2

    .line 545
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_6
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/PanoramaStitchingManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/app/PanoramaStitchingManager;->getTaskProgress(Landroid/net/Uri;)I

    move-result v3

    .line 547
    .local v3, "panoStitchingProgress":I
    if-gez v3, :cond_7

    .line 548
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    goto :goto_0

    .line 551
    :cond_7
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)V

    .line 552
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4, v3}, Lcom/android/camera/CameraActivity;->access$1900(Lcom/android/camera/CameraActivity;I)V

    goto :goto_0
.end method
