.class Lcom/android/camera/CaptureModule$14;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->createVideoSnapshotImageReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 19
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 1981
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v17

    .line 1982
    .local v17, "image":Landroid/media/Image;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/android/camera/CaptureModule;->access$4402(Lcom/android/camera/CaptureModule;J)J

    .line 1983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v8}, Lcom/android/camera/CaptureModule;->access$4400(Lcom/android/camera/CaptureModule;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v18

    .line 1985
    .local v18, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v18, :cond_0

    const/4 v5, 0x0

    .line 1986
    .local v5, "title":Ljava/lang/String;
    :goto_0
    if-nez v18, :cond_1

    const-wide/16 v6, -0x1

    .line 1988
    .local v6, "date":J
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1989
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v4, v3, [B

    .line 1990
    .local v4, "bytes":[B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1992
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v16

    .line 1993
    .local v16, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 1995
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    const/4 v8, 0x0

    .line 1996
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    .line 1997
    invoke-static {v13}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v14}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "jpeg"

    .line 1995
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 2000
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->close()V

    .line 2001
    return-void

    .line 1985
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "bytes":[B
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v11    # "orientation":I
    .end local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    :cond_0
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 1986
    .restart local v5    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1
.end method
