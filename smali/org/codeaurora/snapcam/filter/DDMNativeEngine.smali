.class public Lorg/codeaurora/snapcam/filter/DDMNativeEngine;
.super Ljava/lang/Object;
.source "DDMNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;,
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;,
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;,
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$DepthMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DDMNativeEngine"

.field private static final VU_PLANE:I = 0x2

.field private static final Y_PLANE:I

.field private static mLibLoaded:Z


# instance fields
.field private SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

.field private mBayerImage:Landroid/media/Image;

.field mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

.field private mLensFocusDistance:F

.field mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

.field private mMonoImage:Landroid/media/Image;

.field private mPrimaryY:Ljava/nio/ByteBuffer;

.field private mPrivaryVU:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    const-string v1, "jni_dualcamera"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x1

    sput-boolean v1, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLibLoaded:Z

    .line 51
    const-string v1, "DDMNativeEngine"

    const-string v2, "successfully loaded jni_dualcamera lib"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 52
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DDMNativeEngine"

    const-string v2, "failed to load jni_dualcamera lib"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "DDMNativeEngine"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 56
    const/4 v1, 0x0

    sput-boolean v1, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLibLoaded:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.hal_private_data.reprocess_data_blob"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method private native nativeDualCameraGenerateDDM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII[BI[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZ)Z
.end method

.method private native nativeGetDepthMapSize(II[I)Z
.end method


# virtual methods
.method public dualCameraGenerateDDM([BILandroid/graphics/Rect;)Z
    .locals 25
    .param p1, "depthMapBuffer"    # [B
    .param p2, "depthMapStride"    # I
    .param p3, "roiRect"    # Landroid/graphics/Rect;

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 133
    const-string v1, "DDMNativeEngine"

    const-string v2, " dualCameraGenerateDDM error: mLensFocusDistance is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v24, 0x0

    .line 189
    :goto_0
    return v24

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    if-nez v1, :cond_4

    .line 138
    :cond_1
    const-string v2, "DDMNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBayerImage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mMonoImage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v24, 0x0

    goto :goto_0

    .line 138
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 142
    :cond_4
    if-nez p1, :cond_5

    .line 143
    const-string v1, "DDMNativeEngine"

    const-string v2, "depthMapBuffer can\'t be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v24, 0x0

    goto :goto_0

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    if-nez v1, :cond_a

    .line 150
    :cond_6
    const-string v2, "DDMNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMonoCamReprocessInfo== null:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mBayerCamReprocessInfo == null:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCamSystemCalibrationData == null:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 150
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 156
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v22

    .line 157
    .local v22, "bayerPlanes":[Landroid/media/Image$Plane;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v23

    .line 158
    .local v23, "monoPlanes":[Landroid/media/Image$Plane;
    const/4 v1, 0x4

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 159
    .local v16, "goodRoi":[I
    const/4 v1, 0x0

    aget-object v1, v22, v1

    .line 160
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v1, 0x2

    aget-object v1, v22, v1

    .line 161
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 162
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 163
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v5

    const/4 v1, 0x0

    aget-object v1, v22, v1

    .line 164
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    const/4 v1, 0x2

    aget-object v1, v22, v1

    .line 165
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    const/4 v1, 0x0

    aget-object v1, v23, v1

    .line 167
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v1, 0x2

    aget-object v1, v23, v1

    .line 168
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 169
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 170
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v11

    const/4 v1, 0x0

    aget-object v1, v23, v1

    .line 171
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    const/4 v1, 0x2

    aget-object v1, v23, v1

    .line 172
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 179
    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 180
    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    .line 181
    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    move/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    .line 159
    invoke-direct/range {v1 .. v21}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->nativeDualCameraGenerateDDM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII[BI[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZ)Z

    move-result v24

    .line 184
    .local v24, "result":Z
    const/4 v1, 0x0

    aget v1, v16, v1

    move-object/from16 v0, p3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 185
    const/4 v1, 0x1

    aget v1, v16, v1

    move-object/from16 v0, p3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 186
    const/4 v1, 0x0

    aget v1, v16, v1

    const/4 v2, 0x2

    aget v2, v16, v2

    add-int/2addr v1, v2

    move-object/from16 v0, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 187
    const/4 v1, 0x1

    aget v1, v16, v1

    const/4 v2, 0x3

    aget v2, v16, v2

    add-int/2addr v1, v2

    move-object/from16 v0, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public getBayerScaleCrop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDepthMapSize([I)Z
    .locals 2
    .param p1, "depthMap"    # [I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->nativeGetDepthMapSize(II[I)Z

    move-result v0

    return v0
.end method

.method public getMonoScaleCrop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOTPCalibration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReadyForGenerateDepth()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 92
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 93
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 94
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    .line 96
    return-void
.end method

.method public setBayerImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 107
    return-void
.end method

.method public setBayerLensFocusDistance(F)V
    .locals 0
    .param p1, "lensFocusDistance"    # F

    .prologue
    .line 103
    iput p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    .line 104
    return-void
.end method

.method public setBayerReprocessResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 114
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 115
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->createCamReprocessFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 116
    return-void
.end method

.method public setCamSystemCalibrationData(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V
    .locals 0
    .param p1, "otpCalibration"    # Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    .line 84
    return-void
.end method

.method public setMonoImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 111
    return-void
.end method

.method public setMonoReprocessResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 123
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 124
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->createCamReprocessFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 125
    return-void
.end method
