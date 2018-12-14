.class Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ChromaflashFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->waitForAeBlock(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAeStateConverged:Z

.field final synthetic this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

.field final synthetic val$AeTunningTime:I

.field final synthetic val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field final synthetic val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field final synthetic val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$tuningBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;ILandroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    iput p2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$AeTunningTime:I

    iput-object p3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$tuningBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p5, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p6, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p7, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->mAeStateConverged:Z

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    const/4 v3, 0x2

    .line 221
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 222
    .local v7, "aeState":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AE tunning onCaptureCompleted aeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->mAeStateConverged:Z

    .line 226
    :cond_0
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AE tunning completed mAeStateConverged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->mAeStateConverged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->mAeStateConverged:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$AeTunningTime:I

    if-lt v0, v3, :cond_1

    .line 228
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$AeTunningTime:I

    add-int/lit8 v6, v0, -0x1

    .line 229
    .local v6, "resetTime":I
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->this$0:Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$tuningBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$handler:Landroid/os/Handler;

    invoke-static/range {v0 .. v6}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->access$200(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V

    .line 236
    .end local v6    # "resetTime":I
    :goto_0
    return-void

    .line 233
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method
