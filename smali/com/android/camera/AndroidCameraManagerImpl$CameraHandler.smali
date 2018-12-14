.class Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;
.super Landroid/os/Handler;
.source "AndroidCameraManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    .line 127
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method

.method private enableShutterSound(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 153
    return-void
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 158
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .end local p2    # "cb":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 159
    return-void
.end method

.method private setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 140
    return-void
.end method

.method private setPreviewTexture(Ljava/lang/Object;)V
    .locals 3
    .param p1, "surfaceTexture"    # Ljava/lang/Object;

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v1

    check-cast p1, Landroid/graphics/SurfaceTexture;

    .end local p1    # "surfaceTexture":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not set preview texture"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startFaceDetection()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 132
    return-void
.end method

.method private stopFaceDetection()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0x385

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 240
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 426
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid CameraProxy message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/RuntimeException;
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v11, :cond_4

    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 430
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_3

    .line 431
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3, v5}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 432
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Fail to set parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 456
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 243
    :sswitch_0
    const/16 v3, 0x385

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->removeMessages(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    :try_start_2
    const-string v3, "android.hardware.Camera"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "openLegacy"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 248
    .local v2, "openMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    const/4 v3, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 249
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 248
    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera;

    invoke-static {v6, v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 257
    .end local v2    # "openMethod":Ljava/lang/reflect/Method;
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 261
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$400(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-nez v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    iget-object v6, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$402(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openLegacy failed due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", using open instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 268
    const/16 v3, 0x385

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 275
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 279
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    .line 280
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto/16 :goto_0

    .line 284
    :sswitch_2
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$502(Lcom/android/camera/AndroidCameraManagerImpl;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 286
    :try_start_4
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 287
    :catch_2
    move-exception v1

    .line 288
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3, v1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$502(Lcom/android/camera/AndroidCameraManagerImpl;Ljava/io/IOException;)Ljava/io/IOException;

    goto/16 :goto_0

    .line 293
    .end local v1    # "ex":Ljava/io/IOException;
    :sswitch_3
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 297
    :sswitch_4
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->lock()V

    goto/16 :goto_0

    .line 301
    :sswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->setPreviewTexture(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 306
    :sswitch_6
    :try_start_6
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 307
    :catch_3
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v6, "setPreviewDisplay failed, surface is destoried"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->onStartPreviewFailure(I)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 316
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_7
    :try_start_8
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 317
    :catch_4
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->onStartPreviewFailure(I)V

    goto/16 :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_8
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_0

    .line 329
    :sswitch_9
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 334
    :sswitch_a
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 338
    :sswitch_b
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 342
    :sswitch_c
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 346
    :sswitch_d
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 350
    :sswitch_e
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 354
    :sswitch_f
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 359
    :sswitch_10
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-direct {p0, v3}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 363
    :sswitch_11
    invoke-direct {p0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->startFaceDetection()V

    goto/16 :goto_0

    .line 367
    :sswitch_12
    invoke-direct {p0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->stopFaceDetection()V

    goto/16 :goto_0

    .line 371
    :sswitch_13
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 375
    :sswitch_14
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 376
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 377
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_0

    .line 381
    :sswitch_15
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$300(Lcom/android/camera/AndroidCameraManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    iget-object v6, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$702(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 383
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    goto/16 :goto_0

    .line 388
    :sswitch_16
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 392
    :sswitch_17
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 396
    :sswitch_18
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->enableShutterSound(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v5

    goto :goto_2

    .line 400
    :sswitch_19
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    goto/16 :goto_0

    .line 404
    :sswitch_1a
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$CameraDataCallback;

    invoke-static {v6, v3}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->setHistogramMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    goto/16 :goto_0

    .line 408
    :sswitch_1b
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->sendHistogramData(Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 412
    :sswitch_1c
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v6, v3}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->setLongshot(Landroid/hardware/Camera;Z)V

    goto/16 :goto_0

    .line 416
    :sswitch_1d
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$CameraMetaDataCallback;

    invoke-static {v6, v3}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->setMetadataCb(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraMetaDataCallback;)V

    goto/16 :goto_0

    .line 421
    :sswitch_1e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;->onDeviceOpenFailure(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 437
    .local v0, "e":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_a
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 441
    :goto_3
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3, v10}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto/16 :goto_0

    .line 438
    :catch_5
    move-exception v1

    .line 439
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Fail to release the camera."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 442
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v3

    if-nez v3, :cond_0

    .line 443
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    .line 444
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 447
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v12, v4, v5}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 451
    :cond_5
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot handle message, mCamera is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6a -> :sswitch_6
        0x6b -> :sswitch_16
        0x6c -> :sswitch_17
        0xc9 -> :sswitch_14
        0xca -> :sswitch_15
        0xcb -> :sswitch_19
        0x12d -> :sswitch_b
        0x12e -> :sswitch_c
        0x12f -> :sswitch_d
        0x130 -> :sswitch_f
        0x1cd -> :sswitch_10
        0x1ce -> :sswitch_11
        0x1cf -> :sswitch_12
        0x1d0 -> :sswitch_13
        0x1f5 -> :sswitch_18
        0x1f6 -> :sswitch_e
        0x259 -> :sswitch_1a
        0x25a -> :sswitch_1b
        0x2bd -> :sswitch_1c
        0x321 -> :sswitch_1d
        0x385 -> :sswitch_1e
    .end sparse-switch
.end method

.method public requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 6
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 166
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public waitDone()Z
    .locals 5

    .prologue
    .line 187
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 188
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Ljava/lang/Object;)V

    .line 197
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    monitor-exit v2

    .line 206
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 205
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public waitDone(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 210
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 211
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Ljava/lang/Object;)V

    .line 220
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 224
    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    monitor-exit v2

    .line 230
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 229
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
