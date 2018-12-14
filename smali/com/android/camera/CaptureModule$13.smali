.class Lcom/android/camera/CaptureModule$13;
.super Lcom/android/camera/CaptureModule$ImageAvailableListener;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->setUpCameraOutputs(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;
    .param p2, "cameraId"    # I

    .prologue
    .line 1897
    iput-object p1, p0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0, p2}, Lcom/android/camera/CaptureModule$ImageAvailableListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 18
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 1900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4000(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4100(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v3

    new-instance v8, Lcom/android/camera/CaptureModule$13$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/CaptureModule$13$1;-><init>(Lcom/android/camera/CaptureModule$13;)V

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1908
    :cond_0
    const-string v3, "SnapCam_CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image available for cam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/CaptureModule$13;->mCamId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v16

    .line 1911
    .local v16, "image":Landroid/media/Image;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4200(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/CaptureModule$13;->mCamId:I

    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v8, v9, v10, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1913
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1951
    :goto_0
    return-void

    .line 1915
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/android/camera/CaptureModule;->access$4402(Lcom/android/camera/CaptureModule;J)J

    .line 1916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v8}, Lcom/android/camera/CaptureModule;->access$4400(Lcom/android/camera/CaptureModule;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v17

    .line 1918
    .local v17, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v17, :cond_2

    const/4 v5, 0x0

    .line 1919
    .local v5, "title":Ljava/lang/String;
    :goto_1
    if-nez v17, :cond_3

    const-wide/16 v6, -0x1

    .line 1921
    .local v6, "date":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/camera/CaptureModule;->access$4600(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B

    move-result-object v4

    .line 1923
    .local v4, "bytes":[B
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v8, 0x25

    if-ne v3, v8, :cond_4

    .line 1924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    const-string v8, "raw"

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/camera/MediaSaveService;->addRawImage([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1918
    .end local v4    # "bytes":[B
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    :cond_2
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_1

    .line 1919
    .restart local v5    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 1927
    .restart local v4    # "bytes":[B
    .restart local v6    # "date":J
    :cond_4
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v2

    .line 1928
    .local v2, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 1930
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4700(Lcom/android/camera/CaptureModule;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 1931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3, v4}, Lcom/android/camera/CaptureModule;->access$4802(Lcom/android/camera/CaptureModule;[B)[B

    .line 1932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4900(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3, v4, v11}, Lcom/android/camera/CaptureModule;->showCapturedReview([BI)V

    .line 1948
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 1935
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->onCaptureDone()V

    goto :goto_3

    .line 1938
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    const/4 v8, 0x0

    .line 1939
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    .line 1940
    invoke-static {v13}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v14}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "jpeg"

    .line 1938
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3, v4}, Lcom/android/camera/CaptureModule;->access$502(Lcom/android/camera/CaptureModule;[B)[B

    goto :goto_3

    .line 1945
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    goto :goto_3
.end method
