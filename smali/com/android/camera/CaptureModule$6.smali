.class Lcom/android/camera/CaptureModule$6;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->createSession(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iput p2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 1191
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "cameracapturesession - onClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 1171
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameracapturesession - onConfigureFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1175
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Camera Initialization Failed"

    .line 1176
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Closing SnapdragonCamera"

    .line 1177
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/camera/CaptureModule$6$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModule$6$1;-><init>(Lcom/android/camera/CaptureModule$6;)V

    .line 1178
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1184
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 1185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    const/4 v1, 0x1

    .line 1128
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aput-object p1, v2, v3

    .line 1133
    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    iget-object v3, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1134
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2, p1}, Lcom/android/camera/CaptureModule;->access$2802(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 1136
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-static {v2, v3}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;I)V

    .line 1137
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3000(Lcom/android/camera/CaptureModule;)V

    .line 1138
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3100(Lcom/android/camera/CaptureModule;)V

    .line 1140
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 1141
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CaptureModule;->linkBayerMono(I)V

    .line 1142
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/CaptureModule;->access$3202(Lcom/android/camera/CaptureModule;Z)Z

    .line 1147
    :cond_3
    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    sget v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3300(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    .line 1148
    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 1149
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$3400(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v3, v3, v4

    .line 1150
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$3500(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v5

    .line 1149
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1156
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3600(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1157
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v2, v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 1152
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$3400(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v3, v3, v4

    .line 1153
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$3500(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v5

    .line 1152
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1164
    :catch_1
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 1157
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1158
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$3700(Lcom/android/camera/CaptureModule;)I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->onSessionConfigured(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
