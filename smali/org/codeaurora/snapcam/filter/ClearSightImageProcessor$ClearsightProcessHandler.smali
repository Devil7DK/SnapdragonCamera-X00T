.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearsightProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 985
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 986
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 987
    return-void
.end method

.method private createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "camType"    # I

    .prologue
    .line 1057
    const/4 v1, 0x0

    .line 1059
    .local v1, "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    .line 1060
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 1061
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;

    move-result-object v2

    aget-object v2, v2, p2

    .line 1062
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1061
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1063
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 1064
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1063
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1065
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 1066
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1065
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1067
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 1068
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1067
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    return-object v1

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private processClearSight(Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;)V
    .locals 11
    .param p1, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1002
    const/4 v5, 0x0

    .line 1006
    .local v5, "encodeRequest":S
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7, v9}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 1009
    :cond_0
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7, v9}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 1011
    .local v2, "csTs":J
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7, v9}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v7

    .line 1010
    invoke-direct {p0, v7, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 1012
    .local v1, "csRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1014
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->initProcessImage()Z

    move-result v6

    .line 1015
    .local v6, "processInit":Z
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReferenceMonoEncodeRequest()V

    .line 1016
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReferenceBayerEncodeRequest()V

    .line 1017
    int-to-short v5, v10

    .line 1018
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->reset()V

    .line 1020
    if-eqz v6, :cond_1

    .line 1021
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v4

    .line 1022
    .local v4, "encodeImage":Landroid/media/Image;
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;

    invoke-direct {v0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;-><init>(Landroid/media/Image;)V

    .line 1023
    .local v0, "csImage":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;
    invoke-virtual {v4, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    .line 1025
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->processImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1026
    or-int/lit8 v7, v5, 0x1

    int-to-short v5, v7

    .line 1027
    invoke-direct {p0, v1, v4, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    .line 1034
    .end local v0    # "csImage":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;
    .end local v4    # "encodeImage":Landroid/media/Image;
    :cond_1
    :goto_1
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v7

    invoke-virtual {v7, v10, v5, v8, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1035
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1029
    .restart local v0    # "csImage":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;
    .restart local v4    # "encodeImage":Landroid/media/Image;
    :cond_2
    const/4 v0, 0x0

    .line 1030
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_1
.end method

.method private sendReferenceBayerEncodeRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1049
    .line 1050
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    .line 1049
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1052
    .local v0, "bayerRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    .line 1051
    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    .line 1054
    return-void
.end method

.method private sendReferenceMonoEncodeRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1040
    .line 1041
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    .line 1040
    invoke-direct {p0, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1043
    .local v0, "monoRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    .line 1042
    invoke-direct {p0, v0, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    .line 1045
    return-void
.end method

.method private sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V
    .locals 8
    .param p1, "reprocRequest"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "image"    # Landroid/media/Image;
    .param p3, "camType"    # I

    .prologue
    const/4 v7, 0x1

    .line 1079
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Byte;)V

    .line 1081
    invoke-virtual {p2}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1082
    .local v0, "cropRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1085
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "cropRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1088
    .restart local v0    # "cropRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1090
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    const/4 v4, 0x2

    .line 1091
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    aput v5, v3, v4

    .line 1090
    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 1093
    if-ne p3, v7, :cond_2

    .line 1094
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1095
    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    aput v5, v3, v4

    .line 1094
    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setJpegRoiRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 1101
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-virtual {v3, p2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 1103
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    new-instance v5, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;

    invoke-direct {v5, p0, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1134
    .end local v0    # "cropRect":Landroid/graphics/Rect;
    :goto_1
    return-void

    .line 1097
    .restart local v0    # "cropRect":Landroid/graphics/Rect;
    :cond_2
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1098
    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    aput v5, v3, v4

    .line 1097
    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setJpegRoiRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1129
    .end local v0    # "cropRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 1131
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v2

    .line 1132
    .local v2, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 991
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 993
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 995
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->processClearSight(Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;)V

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
