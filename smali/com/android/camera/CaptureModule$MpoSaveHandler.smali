.class Lcom/android/camera/CaptureModule$MpoSaveHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoSaveHandler"
.end annotation


# instance fields
.field private bayerImage:Landroid/media/Image;

.field private captureStartTime:Ljava/lang/Long;

.field private monoImage:Landroid/media/Image;

.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4862
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    .line 4863
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4864
    return-void
.end method

.method private processNewImage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4879
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MpoSaveHandler:processNewImage for cam id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne v0, v1, :cond_2

    .line 4881
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    .line 4886
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 4887
    invoke-direct {p0}, Lcom/android/camera/CaptureModule$MpoSaveHandler;->saveMpoImage()V

    .line 4889
    :cond_1
    return-void

    .line 4882
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-nez v0, :cond_0

    .line 4883
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    goto :goto_0
.end method

.method private saveMpoImage()V
    .locals 18

    .prologue
    .line 4892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 4893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v17

    .line 4894
    .local v17, "namedEntity":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v17, :cond_0

    const/4 v9, 0x0

    .line 4895
    .local v9, "title":Ljava/lang/String;
    :goto_0
    if-nez v17, :cond_1

    const-wide/16 v10, -0x1

    .line 4896
    .local v10, "date":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v7

    .line 4897
    .local v7, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 4898
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-static {v3, v4}, Lcom/android/camera/CaptureModule;->access$4600(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B

    move-result-object v5

    .line 4899
    .local v5, "bayerBytes":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-static {v3, v4}, Lcom/android/camera/CaptureModule;->access$4600(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B

    move-result-object v6

    .line 4901
    .local v6, "monoBytes":[B
    invoke-static {v5}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v2

    .line 4902
    .local v2, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v13

    .line 4904
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    .line 4906
    invoke-static {v14}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v15}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "jpeg"

    .line 4904
    invoke-virtual/range {v3 .. v16}, Lcom/android/camera/MediaSaveService;->addMpoImage([B[B[BIILjava/lang/String;JLandroid/location/Location;ILcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 4908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 4910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 4911
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    .line 4912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 4913
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    .line 4914
    const/16 v17, 0x0

    .line 4915
    return-void

    .line 4894
    .end local v2    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v5    # "bayerBytes":[B
    .end local v6    # "monoBytes":[B
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "date":J
    .end local v13    # "orientation":I
    :cond_0
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 4895
    .restart local v9    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4868
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4876
    :goto_0
    return-void

    .line 4870
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    goto :goto_0

    .line 4873
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule$MpoSaveHandler;->processNewImage(Landroid/os/Message;)V

    goto :goto_0

    .line 4868
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
