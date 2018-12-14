.class final Lcom/android/camera/PhotoModule$LongshotShutterCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LongshotShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 1399
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onShutter(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 9
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule;->access$5402(Lcom/android/camera/PhotoModule;J)J

    .line 1405
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5400(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v4, v1, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    .line 1406
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KPI Perf] PROFILE_SHUTTER_LAG mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    monitor-enter v7

    .line 1409
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1410
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1411
    :cond_0
    monitor-exit v7

    .line 1439
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1415
    monitor-exit v7

    goto :goto_0

    .line 1438
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1418
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5900(Lcom/android/camera/PhotoModule;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3002(Lcom/android/camera/PhotoModule;Z)Z

    .line 1420
    monitor-exit v7

    goto :goto_0

    .line 1423
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->doShutterAnimation()V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "picture-format"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$6000(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 1427
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5808(Lcom/android/camera/PhotoModule;)I

    .line 1428
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6100(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1429
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v2, v3}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    iget-object v3, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1431
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PhotoModule$LongshotPictureCallback;

    iget-object v8, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v5, v8, v6}, Lcom/android/camera/PhotoModule$LongshotPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    .line 1429
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 1438
    :goto_1
    monitor-exit v7

    goto :goto_0

    .line 1434
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v2, v3}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    iget-object v3, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1435
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v8, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v5, v8, v6}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    .line 1434
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
