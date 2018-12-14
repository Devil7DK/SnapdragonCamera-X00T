.class public Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;
.super Ljava/lang/Object;
.source "DDMNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/DDMNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamStreamCropInfo"
.end annotation


# instance fields
.field crop:Landroid/graphics/Rect;

.field roi_map:Landroid/graphics/Rect;

.field scale_ratio:F

.field stream_id:I

.field stream_zoom:I

.field user_zoom:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 246
    new-instance v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;-><init>()V

    .line 247
    .local v0, "camStreamCropInfo":Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->stream_id:I

    .line 248
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 249
    .local v1, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 250
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 251
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 252
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 253
    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 256
    .local v2, "roi_map":Landroid/graphics/Rect;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 257
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 258
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 259
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 260
    iput-object v2, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    .line 262
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->user_zoom:I

    .line 263
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->stream_zoom:I

    .line 264
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    iput v3, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->scale_ratio:F

    .line 266
    return-object v0
.end method

.method public static createFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 240
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 241
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 242
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    return-object v1
.end method
