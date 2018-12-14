.class Lcom/android/camera/imageprocessor/PostProcessor$8$1;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor$8;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

.field final synthetic val$image:Landroid/media/Image;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor$8;Landroid/media/Image;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/imageprocessor/PostProcessor$8;

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1165
    .local v16, "captureStartTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3200(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3200(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v18

    .line 1167
    .local v18, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v18, :cond_0

    const/4 v5, 0x0

    .line 1168
    .local v5, "title":Ljava/lang/String;
    :goto_0
    if-nez v18, :cond_1

    const-wide/16 v6, -0x1

    .line 1169
    .local v6, "date":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v19

    .line 1171
    .local v19, "size":I
    move/from16 v0, v19

    new-array v4, v0, [B

    .line 1172
    .local v4, "bytes":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v8, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v8, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1173
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v2

    .line 1174
    .local v2, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 1175
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/CaptureModule;->setJpegImageData([B)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->isQuickCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->onCaptureDone()V

    .line 1189
    :goto_2
    return-void

    .line 1167
    .end local v2    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v4    # "bytes":[B
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v11    # "orientation":I
    .end local v19    # "size":I
    :cond_0
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 1168
    .restart local v5    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto/16 :goto_1

    .line 1180
    .restart local v2    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v4    # "bytes":[B
    .restart local v6    # "date":J
    .restart local v11    # "orientation":I
    .restart local v19    # "size":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    invoke-virtual {v3, v4, v11}, Lcom/android/camera/CaptureModule;->showCapturedReview([BI)V

    goto :goto_2

    .line 1183
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    .line 1184
    invoke-virtual {v9}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v13, v13, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1185
    invoke-static {v13}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/CaptureModule;->getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v14, v14, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v14}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "jpeg"

    .line 1183
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/CaptureModule;->updateThumbnailJpegData([B)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_2
.end method
