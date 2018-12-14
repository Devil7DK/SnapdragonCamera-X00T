.class public Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;
.super Ljava/lang/Object;
.source "DDMNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/DDMNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamRotationInfo"
.end annotation


# instance fields
.field device_rotation:I

.field jpeg_rotation:I

.field stream_id:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCamReprocessFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 277
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 278
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 279
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 282
    new-instance v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;-><init>()V

    .line 283
    .local v0, "rotation_info":Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->jpeg_rotation:I

    .line 284
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->device_rotation:I

    .line 285
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->stream_id:I

    .line 286
    return-object v0
.end method
