.class public Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
.super Ljava/lang/Object;
.source "DDMNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/DDMNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamReprocessInfo"
.end annotation


# instance fields
.field private final SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

.field af_focal_length_ratio:F

.field camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

.field cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

.field isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

.field pipeline_flip:I

.field rotation_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

.field sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sensor Crop left = %d\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Sensor Crop top = %d\n"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Sensor Crop width = %d\n"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Sensor Crop height = %d\n"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Sensor ROI Map left = %d\n"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Sensor ROI Map top = %d\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sensor ROI Map width = %d\n"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sensor ROI Map height = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CAMIF Crop left = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CAMIF Crop top = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CAMIF Crop width = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CAMIF Crop height = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CAMIF ROI Map left = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CAMIF ROI Map top = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CAMIF ROI Map width = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CAMIF ROI Map height = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ISP Crop left = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ISP Crop top = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ISP Crop width = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ISP Crop height = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ISP ROI Map left = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ISP ROI Map top = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ISP ROI Map width = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ISP ROI Map height = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "CPP Crop left = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CPP Crop top = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CPP Crop width = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CPP Crop height = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CPP ROI Map left = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CPP ROI Map top = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CPP ROI Map width = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CPP ROI Map height = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Focal length Ratio = %f\n"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Current pipeline mirror flip setting = %d\n"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Current pipeline rotation setting = %d\n"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    return-void
.end method

.method public static createCamReprocessFromBytes(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 342
    new-instance v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;-><init>()V

    .line 343
    .local v0, "scaleCropRotation":Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 344
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 345
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 346
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 347
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->af_focal_length_ratio:F

    .line 348
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->pipeline_flip:I

    .line 349
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->rotation_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    .line 350
    return-object v0
.end method

.method public static createCamReprocessFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 337
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 338
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 339
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->createCamReprocessFromBytes(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->af_focal_length_ratio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->pipeline_flip:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->rotation_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    iget v3, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->jpeg_rotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
