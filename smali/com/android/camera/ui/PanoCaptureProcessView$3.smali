.class Lcom/android/camera/ui/PanoCaptureProcessView$3;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iput-object p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2800(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 704
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_a

    .line 705
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v5, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2702(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 709
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2802(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 711
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->val$bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2900()F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1400(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3000(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V

    .line 713
    const/4 v3, 0x1

    new-array v12, v3, [Z

    .line 714
    .local v12, "isKey":[Z
    const/4 v3, 0x3

    new-array v11, v3, [I

    .line 715
    .local v11, "framePos":[I
    const/4 v3, 0x1

    new-array v15, v3, [I

    .line 716
    .local v15, "moveSpeed":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3, v12, v11, v15}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3100(Lcom/android/camera/ui/PanoCaptureProcessView;[Z[I[I)V

    .line 717
    const/4 v3, 0x2

    aget v3, v11, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0295

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3202(Lcom/android/camera/ui/PanoCaptureProcessView;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    :goto_1
    const/4 v3, 0x0

    aget-boolean v3, v12, v3

    if-eqz v3, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2100(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    const/4 v7, 0x2

    aget v7, v11, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->addTask(Landroid/graphics/Bitmap;III)V

    .line 727
    :cond_3
    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v5

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFII)V

    .line 728
    .local v1, "picture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v3

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v3, v4, :cond_4

    .line 729
    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_c

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 739
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v3

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v3, v4, :cond_7

    .line 743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v3

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v3

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v3, v4, :cond_10

    .line 744
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_f

    .line 745
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v5, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 747
    .local v14, "masterBitmap":Landroid/graphics/Bitmap;
    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 764
    .local v13, "liveBitmap":Landroid/graphics/Bitmap;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object/from16 v16, v0

    new-instance v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFIIII)V

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 765
    new-instance v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v14

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFIIII)V

    .line 766
    .local v2, "masterPicture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2200(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 767
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v3

    iput-object v13, v3, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    .line 769
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3502(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 772
    .end local v2    # "masterPicture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .end local v13    # "liveBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "masterBitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x0

    aget-boolean v4, v12, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3500(Lcom/android/camera/ui/PanoCaptureProcessView;)Z

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3600(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3700(Lcom/android/camera/ui/PanoCaptureProcessView;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1100(Lcom/android/camera/ui/PanoCaptureProcessView;ZLjava/lang/String;)V

    .line 777
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3502(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 779
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3802(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 780
    return-void

    .line 707
    .end local v1    # "picture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .end local v11    # "framePos":[I
    .end local v12    # "isKey":[Z
    .end local v15    # "moveSpeed":[I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v5, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2702(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 720
    .restart local v11    # "framePos":[I
    .restart local v12    # "isKey":[Z
    .restart local v15    # "moveSpeed":[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3202(Lcom/android/camera/ui/PanoCaptureProcessView;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1902(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    goto/16 :goto_1

    .line 731
    .restart local v1    # "picture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    :cond_c
    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v4

    if-le v3, v4, :cond_d

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    goto/16 :goto_2

    .line 733
    :cond_d
    const/4 v3, 0x1

    aget v3, v11, v3

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_e

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    goto/16 :goto_2

    .line 735
    :cond_e
    const/4 v3, 0x1

    aget v3, v11, v3

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v4, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    goto/16 :goto_2

    .line 749
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v5, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 751
    .restart local v14    # "masterBitmap":Landroid/graphics/Bitmap;
    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .restart local v13    # "liveBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 754
    .end local v13    # "liveBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "masterBitmap":Landroid/graphics/Bitmap;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_12

    .line 755
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v5, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 756
    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 757
    .restart local v14    # "masterBitmap":Landroid/graphics/Bitmap;
    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .restart local v13    # "liveBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 759
    .end local v13    # "liveBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "masterBitmap":Landroid/graphics/Bitmap;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v5, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 760
    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 761
    .restart local v14    # "masterBitmap":Landroid/graphics/Bitmap;
    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .restart local v13    # "liveBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 769
    .restart local v2    # "masterPicture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
