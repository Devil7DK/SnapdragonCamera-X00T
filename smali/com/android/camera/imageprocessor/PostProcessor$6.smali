.class Lcom/android/camera/imageprocessor/PostProcessor$6;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor;->addImage(Landroid/media/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;

.field final synthetic val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

.field final synthetic val$image:Landroid/media/Image;

.field final synthetic val$numImage:I


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Landroid/media/Image;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iput-object p3, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    iput p4, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 960
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    move-result-object v3

    sget-object v5, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-eq v3, v5, :cond_1

    .line 961
    :cond_0
    monitor-exit v18

    .line 999
    :goto_0
    return-void

    .line 963
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 964
    .local v17, "yBuf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 966
    .local v16, "vuBuf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 967
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    new-instance v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    mul-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 968
    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v9}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v9

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    .line 967
    invoke-static {v8, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2202(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 998
    :goto_1
    monitor-exit v18

    goto/16 :goto_0

    .end local v16    # "vuBuf":Ljava/nio/ByteBuffer;
    .end local v17    # "yBuf":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 973
    .restart local v16    # "vuBuf":Ljava/nio/ByteBuffer;
    .restart local v17    # "yBuf":Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2300()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 974
    new-instance v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 976
    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    mul-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    .line 975
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 976
    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 977
    invoke-static {v8}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    .line 978
    .local v2, "debugResultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    iget-object v3, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 979
    iget-object v3, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v6

    mul-int/2addr v5, v6

    .line 980
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 979
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 981
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 982
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v2, v5, v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2500(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v4

    .line 985
    .local v4, "bytes":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Debug_beforeApplyingFilter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 987
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 988
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 989
    invoke-static {v11}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v13}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/CaptureModule;->getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 990
    invoke-static {v14}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "jpeg"

    .line 985
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 992
    .end local v2    # "debugResultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .end local v4    # "bytes":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2600(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    if-lez v3, :cond_4

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 995
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v1, v5, v6}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    aput-object v6, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
