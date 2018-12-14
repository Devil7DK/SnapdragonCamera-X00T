.class Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;
.super Ljava/lang/Thread;
.source "ChromaflashFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

.field final synthetic val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field final synthetic val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field final synthetic val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p5, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 157
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x6

    if-ge v7, v0, :cond_2

    .line 158
    if-nez v7, :cond_1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 160
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    invoke-static {v0, v7}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$000(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;I)V

    .line 157
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 161
    :cond_1
    if-ne v7, v10, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 163
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 166
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    invoke-static {v0, v7}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$000(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;I)V

    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 195
    :cond_2
    return-void

    .line 167
    :cond_3
    const/4 v0, 0x2

    if-ne v7, v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x1

    .line 171
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 172
    .local v1, "AeTunningBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    .line 173
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 174
    .local v8, "key":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 176
    .end local v8    # "key":Landroid/hardware/camera2/CaptureRequest$Key;
    :cond_4
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$100(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    .line 177
    invoke-static {v2}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$100(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    .line 176
    invoke-virtual {v0, v2}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceForSession(I)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$handler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-static/range {v0 .. v6}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$200(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V

    goto/16 :goto_1

    .line 181
    .end local v1    # "AeTunningBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_5
    const/4 v0, 0x3

    if-ne v7, v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 183
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    invoke-static {v0, v7}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$000(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;I)V

    goto/16 :goto_1

    .line 184
    :cond_6
    const/4 v0, 0x4

    if-ne v7, v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 188
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    invoke-static {v0, v7}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$000(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;I)V

    goto/16 :goto_1

    .line 189
    :cond_7
    if-ne v7, v11, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method
