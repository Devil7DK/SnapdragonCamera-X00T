.class final Lcom/android/camera/PhotoModule$ShutterCallback;
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
    name = "ShutterCallback"
.end annotation


# instance fields
.field private mNeedsAnimation:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Z)V
    .locals 0
    .param p2, "needsAnimation"    # Z

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput-boolean p2, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedsAnimation:Z

    .line 1449
    return-void
.end method


# virtual methods
.method public onShutter(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 10
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1453
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/android/camera/PhotoModule;->access$5402(Lcom/android/camera/PhotoModule;J)J

    .line 1454
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5400(Lcom/android/camera/PhotoModule;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v8, v1, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    .line 1455
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KPI Perf] PROFILE_SHUTTER_LAG mShutterLag = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v6, v3, Lcom/android/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$ShutterCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ShutterCallback$1;-><init>(Lcom/android/camera/PhotoModule$ShutterCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6600(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6800(Lcom/android/camera/PhotoModule;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6700(Lcom/android/camera/PhotoModule;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1467
    :cond_1
    return-void
.end method
