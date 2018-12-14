.class final Lcom/android/camera/PhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# static fields
.field public static final GDEPTH_SIZE:I = 0x12c000


# instance fields
.field mBokeh:[B

.field mCallTime:I

.field mDepth:[B

.field mLocation:Landroid/location/Location;

.field mOrigin:[B

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V
    .locals 1
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    .line 1731
    iput-object p2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1732
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 48
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 1736
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    .line 1737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/camera/PhotoModule;->access$8200()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1738
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1739
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    .line 1741
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    if-nez v5, :cond_1

    .line 1742
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    .line 1744
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1745
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    move-object/from16 p1, v0

    .line 1749
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->stopSelfieFlash()V

    .line 1751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1752
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 1755
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->isPreviewCoverVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1758
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->hidePreviewCover()V

    .line 1760
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1761
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Instant capture picture taken!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$8402(Lcom/android/camera/PhotoModule;Z)Z

    .line 1764
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2213
    :cond_7
    :goto_0
    return-void

    .line 1767
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1768
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1781
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$8602(Lcom/android/camera/PhotoModule;I)I

    .line 1782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/android/camera/PhotoModule;->access$8702(Lcom/android/camera/PhotoModule;J)J

    .line 1783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_a

    .line 1784
    const-string v5, "CAM_PhotoModule"

    const-string v6, "JpegPictureCallback : in zslmode"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$4302(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 1786
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v9, "num-snaps-per-shutter"

    invoke-virtual {v6, v9}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$8902(Lcom/android/camera/PhotoModule;I)I

    .line 1788
    :cond_a
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JpegPictureCallback: Received = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "Burst count = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1789
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1788
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v5, v24, v26

    if-eqz v5, :cond_1a

    .line 1794
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1795
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$5400(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1796
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1797
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1804
    :goto_2
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v9, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 1809
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1810
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1811
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1812
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v5, v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1813
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_1b

    const/16 v38, 0x1

    .line 1814
    .local v38, "needRestartPreview":Z
    :goto_3
    if-eqz v38, :cond_1c

    .line 1815
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)V

    .line 1816
    const-string v5, "continuous-picture"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1817
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    .line 1816
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1818
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1834
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$9202(Lcom/android/camera/PhotoModule;Z)Z

    .line 1835
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1836
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "00.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "01.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "02.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "03.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "04.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "DepthMapImage.y"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "AllFocusImage.jpg"

    aput-object v6, v4, v5

    .line 1839
    .local v4, "NAMES":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v39

    .line 1841
    .local v39, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1842
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    .end local v4    # "NAMES":[Ljava/lang/String;
    .end local v39    # "out":Ljava/io/FileOutputStream;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1850
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1851
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v16

    .line 1852
    .local v16, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 1853
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$702(Lcom/android/camera/PhotoModule;Z)Z

    .line 1855
    const/16 v37, 0x0

    .line 1856
    .local v37, "needFlip":Z
    invoke-static/range {v16 .. v16}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v15

    .line 1857
    .local v15, "orientation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)I

    move-result v5

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v6

    if-ne v5, v6, :cond_f

    .line 1858
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v5

    const-string v6, "pref_camera_selfiemirror_key"

    .line 1859
    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v47

    check-cast v47, Lcom/android/camera/IconListPreference;

    .line 1860
    .local v47, "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v47, :cond_f

    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 1861
    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1862
    const/16 v37, 0x1

    .line 1865
    .end local v47    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v37, :cond_10

    .line 1866
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 1869
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$9506(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1873
    if-eqz v37, :cond_11

    .line 1874
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)I

    move-result v6

    aget-object v35, v5, v6

    .line 1875
    .local v35, "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, v35

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6, v15}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object p1

    .line 1876
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object p1

    .line 1879
    .end local v35    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1881
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v6, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v46

    .line 1885
    .local v46, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    add-int/2addr v5, v15

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_1f

    .line 1886
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1887
    .local v13, "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1892
    .local v14, "height":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1893
    .local v44, "pictureFormat":Ljava/lang/String;
    if-eqz v44, :cond_12

    const-string v5, "jpeg"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1895
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "raw-size"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1896
    .local v42, "pair":Ljava/lang/String;
    if-eqz v42, :cond_12

    .line 1897
    const/16 v5, 0x78

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v45

    .line 1898
    .local v45, "pos":I
    const/4 v5, -0x1

    move/from16 v0, v45

    if-eq v0, v5, :cond_12

    .line 1899
    const/4 v5, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1900
    add-int/lit8 v5, v45, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1904
    .end local v42    # "pair":Ljava/lang/String;
    .end local v45    # "pos":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v36

    .line 1905
    .local v36, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v36, :cond_20

    const/16 v23, 0x0

    .line 1906
    .local v23, "title":Ljava/lang/String;
    :goto_7
    if-nez v36, :cond_21

    const-wide/16 v10, -0x1

    .line 1908
    .local v10, "date":J
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 1910
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;[B)V

    .line 1912
    if-eqz v23, :cond_13

    .line 1913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1916
    :cond_13
    if-nez v23, :cond_22

    .line 1917
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Unbalanced name/data pair"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2a

    .line 1974
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v43

    .line 1975
    .local v43, "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v6, 0x160

    if-gt v5, v6, :cond_29

    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x120

    if-gt v5, v6, :cond_29

    .line 1976
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    .line 1980
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1981
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 2000
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_15
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 2001
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$1;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2011
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 2012
    .local v40, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    sub-long v24, v40, v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2013
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v9, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_16

    .line 2017
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/android/camera/PhotoModule;->access$8702(Lcom/android/camera/PhotoModule;J)J

    .line 2020
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v5, v5, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_17

    .line 2021
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2030
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2031
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2032
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2033
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 1771
    .end local v15    # "orientation":I
    .end local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v37    # "needFlip":Z
    .end local v38    # "needRestartPreview":Z
    .end local v40    # "now":J
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hdr"

    if-ne v5, v6, :cond_19

    .line 1772
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->showSwitcher()V

    .line 1773
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    goto/16 :goto_1

    .line 1776
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1777
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    goto/16 :goto_1

    .line 1799
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1800
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$5400(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1802
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_2

    .line 1813
    :cond_1b
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 1820
    .restart local v38    # "needRestartPreview":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1821
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_b

    .line 1822
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1823
    const-string v5, "continuous-picture"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1824
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    .line 1823
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1827
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 1828
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1829
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$9100(Lcom/android/camera/PhotoModule;I)V

    .line 1831
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    goto/16 :goto_4

    .line 1889
    .restart local v15    # "orientation":I
    .restart local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v37    # "needFlip":Z
    .restart local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_1f
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1890
    .restart local v13    # "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v14    # "height":I
    goto/16 :goto_6

    .line 1905
    .restart local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v44    # "pictureFormat":Ljava/lang/String;
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_7

    .line 1906
    .restart local v23    # "title":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, v36

    iget-wide v10, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto/16 :goto_8

    .line 1919
    .restart local v10    # "date":J
    :cond_22
    const-wide/16 v24, -0x1

    cmp-long v5, v10, v24

    if-nez v5, :cond_23

    .line 1920
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v10, v5, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 1922
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)I

    move-result v5

    if-ltz v5, :cond_24

    .line 1924
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v20

    .line 1927
    .local v20, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v6, Lcom/android/camera/exif/Rational;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1929
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 1927
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v34

    .line 1930
    .local v34, "directionTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1931
    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1933
    .end local v20    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v34    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1934
    .local v19, "mPictureFormat":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1936
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$8200()Z

    move-result v5

    if-nez v5, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1937
    if-eqz p1, :cond_25

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    .line 1938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    if-eqz v5, :cond_25

    .line 1939
    new-instance v7, Lorg/codeaurora/snapcam/filter/GImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    const-string v6, "image/jpeg"

    invoke-direct {v7, v5, v6}, Lorg/codeaurora/snapcam/filter/GImage;-><init>([BLjava/lang/String;)V

    .line 1940
    .local v7, "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/GDepth;->createGDepth([B)Lorg/codeaurora/snapcam/filter/GDepth;

    move-result-object v8

    .line 1941
    .local v8, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v5}, Lorg/codeaurora/snapcam/filter/GDepth;->setRoi(Landroid/graphics/Rect;)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bokeh_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v17, v0

    .line 1944
    invoke-static/range {v17 .. v17}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v18, v0

    .line 1945
    invoke-static/range {v18 .. v18}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v18

    .line 1942
    invoke-virtual/range {v5 .. v19}, Lcom/android/camera/MediaSaveService;->addXmpImage([BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1968
    .end local v7    # "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    .end local v8    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :cond_25
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_14

    .line 1969
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showRefocusToast(Z)V

    goto/16 :goto_9

    .line 1949
    :cond_26
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_27

    .line 1950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1952
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1953
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 1950
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_d

    .line 1955
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1957
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1958
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 1955
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1962
    :cond_28
    const-string v5, "CAM_PhotoModule"

    const-string v6, "save debug jpeg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1965
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1966
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 1963
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1978
    .end local v19    # "mPictureFormat":Ljava/lang/String;
    .restart local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    goto/16 :goto_a

    .line 1987
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$1602(Lcom/android/camera/PhotoModule;[B)[B

    .line 1988
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5, v15}, Lcom/android/camera/PhotoModule;->access$1702(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_b

    .line 1992
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1993
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$5002(Lcom/android/camera/PhotoModule;[B)[B

    .line 1994
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 1995
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v15, v6}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    goto/16 :goto_b

    .line 1997
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    goto/16 :goto_b

    .line 2009
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$9506(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    goto/16 :goto_c

    .line 2041
    .end local v15    # "orientation":I
    .end local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v37    # "needFlip":Z
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    .line 2042
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v16

    .line 2043
    .restart local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v15

    .line 2044
    .restart local v15    # "orientation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)I

    move-result v5

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v6

    if-ne v5, v6, :cond_30

    .line 2045
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v5

    const-string v6, "pref_camera_selfiemirror_key"

    .line 2046
    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v47

    check-cast v47, Lcom/android/camera/IconListPreference;

    .line 2047
    .restart local v47    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v47, :cond_30

    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 2048
    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2049
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)I

    move-result v6

    aget-object v35, v5, v6

    .line 2050
    .restart local v35    # "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, v35

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6, v15}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object p1

    .line 2051
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object p1

    .line 2054
    .end local v35    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v47    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 2056
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_31

    .line 2057
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v6, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 2060
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v46

    .line 2062
    .restart local v46    # "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    add-int/2addr v5, v15

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_38

    .line 2063
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2064
    .restart local v13    # "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2069
    .restart local v14    # "height":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2070
    .restart local v44    # "pictureFormat":Ljava/lang/String;
    if-eqz v44, :cond_32

    const-string v5, "jpeg"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2072
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "raw-size"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2073
    .restart local v42    # "pair":Ljava/lang/String;
    if-eqz v42, :cond_32

    .line 2074
    const/16 v5, 0x78

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v45

    .line 2075
    .restart local v45    # "pos":I
    const/4 v5, -0x1

    move/from16 v0, v45

    if-eq v0, v5, :cond_32

    .line 2076
    const/4 v5, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2077
    add-int/lit8 v5, v45, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2081
    .end local v42    # "pair":Ljava/lang/String;
    .end local v45    # "pos":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v36

    .line 2082
    .restart local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v36, :cond_39

    const/16 v23, 0x0

    .line 2083
    .restart local v23    # "title":Ljava/lang/String;
    :goto_f
    if-nez v36, :cond_3a

    const-wide/16 v10, -0x1

    .line 2085
    .restart local v10    # "date":J
    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 2087
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;[B)V

    .line 2089
    if-eqz v23, :cond_33

    .line 2090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2093
    :cond_33
    if-nez v23, :cond_3b

    .line 2094
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Unbalanced name/data pair"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_34
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_43

    .line 2150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v43

    .line 2151
    .restart local v43    # "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v6, 0x160

    if-gt v5, v6, :cond_42

    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x120

    if-gt v5, v6, :cond_42

    .line 2152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    .line 2156
    :goto_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 2176
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_35
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 2177
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2187
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 2188
    .restart local v40    # "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    sub-long v24, v40, v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2189
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v9, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_36

    .line 2193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/android/camera/PhotoModule;->access$8702(Lcom/android/camera/PhotoModule;J)J

    .line 2196
    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v5, v5, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_37

    .line 2197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$4;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2206
    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2207
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2208
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2209
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 2066
    .end local v40    # "now":J
    .restart local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_38
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2067
    .restart local v13    # "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v14    # "height":I
    goto/16 :goto_e

    .line 2082
    .restart local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v44    # "pictureFormat":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_f

    .line 2083
    .restart local v23    # "title":Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, v36

    iget-wide v10, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto/16 :goto_10

    .line 2096
    .restart local v10    # "date":J
    :cond_3b
    const-wide/16 v24, -0x1

    cmp-long v5, v10, v24

    if-nez v5, :cond_3c

    .line 2097
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v10, v5, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2099
    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)I

    move-result v5

    if-ltz v5, :cond_3d

    .line 2101
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v20

    .line 2104
    .restart local v20    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v6, Lcom/android/camera/exif/Rational;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2106
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 2104
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v34

    .line 2107
    .restart local v34    # "directionTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2108
    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2110
    .end local v20    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v34    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2111
    .restart local v19    # "mPictureFormat":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2113
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$8200()Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2114
    if-eqz p1, :cond_3e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3e

    .line 2115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    if-eqz v5, :cond_3e

    .line 2116
    new-instance v7, Lorg/codeaurora/snapcam/filter/GImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    const-string v6, "image/jpeg"

    invoke-direct {v7, v5, v6}, Lorg/codeaurora/snapcam/filter/GImage;-><init>([BLjava/lang/String;)V

    .line 2117
    .restart local v7    # "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/GDepth;->createGDepth([B)Lorg/codeaurora/snapcam/filter/GDepth;

    move-result-object v8

    .line 2118
    .restart local v8    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v5}, Lorg/codeaurora/snapcam/filter/GDepth;->setRoi(Landroid/graphics/Rect;)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bokeh_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v17, v0

    .line 2121
    invoke-static/range {v17 .. v17}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v18, v0

    .line 2122
    invoke-static/range {v18 .. v18}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v18

    .line 2119
    invoke-virtual/range {v5 .. v19}, Lcom/android/camera/MediaSaveService;->addXmpImage([BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2144
    .end local v7    # "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    .end local v8    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :cond_3e
    :goto_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_34

    .line 2145
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showRefocusToast(Z)V

    goto/16 :goto_11

    .line 2126
    :cond_3f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_40

    .line 2127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2129
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2130
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2127
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_15

    .line 2132
    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2134
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2135
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2132
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2139
    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2141
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2142
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2139
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2154
    .end local v19    # "mPictureFormat":Ljava/lang/String;
    .restart local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    goto/16 :goto_12

    .line 2163
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$1602(Lcom/android/camera/PhotoModule;[B)[B

    .line 2164
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5, v15}, Lcom/android/camera/PhotoModule;->access$1702(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_13

    .line 2168
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$5002(Lcom/android/camera/PhotoModule;[B)[B

    .line 2170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 2171
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v15, v6}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    goto/16 :goto_13

    .line 2173
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    goto/16 :goto_13

    .line 2185
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$9506(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    goto/16 :goto_14

    .line 1843
    .end local v15    # "orientation":I
    .end local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v4    # "NAMES":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_5
.end method
