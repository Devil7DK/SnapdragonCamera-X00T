.class Lcom/android/camera/imageprocessor/PostProcessor$7;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor;->processImage(Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$date:J

.field final synthetic val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

.field final synthetic val$mediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iput-object p3, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$title:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$date:J

    iput-object p6, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$mediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iput-object p7, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1052
    const/16 v23, 0x0

    .line 1053
    .local v23, "resultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 1054
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v2, v2, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-nez v2, :cond_0

    .line 1055
    monitor-exit v24

    .line 1115
    :goto_0
    return-void

    .line 1057
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v23

    .line 1068
    :cond_1
    if-eqz v23, :cond_6

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getFrameFilters()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 1071
    .local v8, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    invoke-interface {v8, v3, v4, v5, v6}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->init(IIII)V

    .line 1072
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v8, v3, v4, v5, v6}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    goto :goto_1

    .line 1114
    .end local v8    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1060
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v23

    .line 1061
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v2

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v2

    aget-object v2, v2, v22

    if-eqz v2, :cond_3

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v2

    aget-object v2, v2, v22

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v3, v2, v22

    .line 1061
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1075
    .end local v22    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1076
    const/4 v7, 0x1

    .line 1077
    .local v7, "isVertical":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_9

    .line 1078
    :cond_5
    const/4 v7, 0x0

    .line 1082
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    sub-int/2addr v6, v9

    invoke-static/range {v2 .. v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2800(Lcom/android/camera/imageprocessor/PostProcessor;[BIIIZ)I

    .line 1088
    .end local v7    # "isVertical":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2900(Lcom/android/camera/imageprocessor/PostProcessor;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    sget-object v3, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->INIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    invoke-static {v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2102(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$STATUS;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->stopMonitor()V

    .line 1093
    :cond_7
    if-eqz v23, :cond_8

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1094
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    if-gt v2, v3, :cond_8

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1095
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    if-le v2, v3, :cond_a

    .line 1097
    :cond_8
    const-string v2, "PostProcessor"

    const-string v3, "Result image is not valid."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :goto_4
    monitor-exit v24

    goto/16 :goto_0

    .line 1080
    .restart local v7    # "isVertical":Z
    :cond_9
    const/4 v7, 0x1

    goto :goto_3

    .line 1099
    .end local v7    # "isVertical":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/imageprocessor/PostProcessor;->waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-static {v2, v0, v3, v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2500(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v10

    .line 1100
    .local v10, "bytes":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/camera/CaptureModule;->setJpegImageData([B)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isQuickCapture()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->onCaptureDone()V

    .line 1109
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$date:J

    const/4 v14, 0x0

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1110
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1111
    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$mediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$contentResolver:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "jpeg"

    .line 1109
    invoke-virtual/range {v9 .. v21}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/camera/CaptureModule;->updateThumbnailJpegData([B)V

    goto/16 :goto_4

    .line 1106
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Lcom/android/camera/CaptureModule;->showCapturedReview([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method
