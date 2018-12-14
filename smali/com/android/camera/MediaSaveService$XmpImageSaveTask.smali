.class Lcom/android/camera/MediaSaveService$XmpImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmpImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private bayer:Lorg/codeaurora/snapcam/filter/GImage;

.field private data:[B

.field private date:J

.field private exif:Lcom/android/camera/exif/ExifInterface;

.field private gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

.field private height:I

.field private listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private mainImage:[B

.field private orientation:I

.field private pictureFormat:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;[BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "mainImage"    # [B
    .param p3, "bayer"    # Lorg/codeaurora/snapcam/filter/GImage;
    .param p4, "gDepth"    # Lorg/codeaurora/snapcam/filter/GDepth;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "date"    # J
    .param p8, "loc"    # Landroid/location/Location;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "orientation"    # I
    .param p12, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p13, "resolver"    # Landroid/content/ContentResolver;
    .param p14, "listener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p15, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->mainImage:[B

    .line 408
    iput-object p4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    .line 409
    iput-object p3, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    .line 410
    iput-object p5, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->title:Ljava/lang/String;

    .line 411
    iput-wide p6, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->date:J

    .line 412
    iput-object p8, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->loc:Landroid/location/Location;

    .line 413
    iput p9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    .line 414
    iput p10, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    .line 415
    iput p11, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->orientation:I

    .line 416
    iput-object p12, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 417
    iput-object p13, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 418
    iput-object p14, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 419
    iput-object p15, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->pictureFormat:Ljava/lang/String;

    .line 420
    return-void
.end method

.method private embedGDepthAndBayerInClearSight([B)[B
    .locals 10
    .param p1, "clearSightImageBytes"    # [B

    .prologue
    const/4 v6, 0x0

    .line 457
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "embedGDepthInClearSight"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    if-nez v7, :cond_1

    .line 459
    :cond_0
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "clearSightImageBytes is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_0
    return-object v6

    .line 463
    :cond_1
    invoke-static {}, Lcom/android/camera/util/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v5

    .line 465
    .local v5, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    if-eqz v7, :cond_2

    .line 466
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "Mime"

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v9}, Lorg/codeaurora/snapcam/filter/GDepth;->getMime()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "Near"

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v9}, Lorg/codeaurora/snapcam/filter/GDepth;->getNear()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "Far"

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v9}, Lorg/codeaurora/snapcam/filter/GDepth;->getFar()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "Format"

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v9}, Lorg/codeaurora/snapcam/filter/GDepth;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v7}, Lorg/codeaurora/snapcam/filter/GDepth;->getRoi()Landroid/graphics/Rect;

    move-result-object v4

    .line 472
    .local v4, "roi":Landroid/graphics/Rect;
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "RoiX"

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "RoiY"

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "RoiWidth"

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "RoiHeight"

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    .end local v4    # "roi":Landroid/graphics/Rect;
    :cond_2
    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    if-eqz v7, :cond_3

    .line 479
    const-string v7, "http://ns.google.com/photos/1.0/image/"

    const-string v8, "Mime"

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    invoke-virtual {v9}, Lorg/codeaurora/snapcam/filter/GImage;->getMime()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_3
    invoke-static {}, Lcom/android/camera/util/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v3

    .line 490
    .local v3, "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    if-eqz v7, :cond_4

    .line 491
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "Data"

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v9}, Lorg/codeaurora/snapcam/filter/GDepth;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    :cond_4
    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    if-eqz v7, :cond_5

    .line 495
    const-string v7, "http://ns.google.com/photos/1.0/image/"

    const-string v8, "Data"

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    invoke-virtual {v9}, Lorg/codeaurora/snapcam/filter/GImage;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    :cond_5
    :goto_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 503
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 504
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1, v5, v3}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 505
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto/16 :goto_0

    .line 483
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v2

    .line 484
    .local v2, "exception":Lcom/adobe/xmp/XMPException;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "create XMPMeta error"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 497
    .end local v2    # "exception":Lcom/adobe/xmp/XMPException;
    .restart local v3    # "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :catch_1
    move-exception v2

    .line 498
    .restart local v2    # "exception":Lcom/adobe/xmp/XMPException;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "create extended XMPMeta error"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 507
    .end local v2    # "exception":Lcom/adobe/xmp/XMPException;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_6
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "embedGDepthInClearSight failure "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 12
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->mainImage:[B

    invoke-direct {p0, v0}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->embedGDepthAndBayerInClearSight([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    .line 430
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->mainImage:[B

    iput-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    .line 432
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "embedGDepthAndBayerInClearSight fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    if-nez v0, :cond_2

    .line 437
    :cond_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 438
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 439
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 440
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    .line 441
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    .line 443
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->date:J

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->orientation:I

    iget-object v6, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    iget v8, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    iget v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    iget-object v10, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->pictureFormat:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    .line 451
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    iget-object v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v2}, Lcom/android/camera/MediaSaveService;->access$000(Lcom/android/camera/MediaSaveService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaveService;->access$002(Lcom/android/camera/MediaSaveService;J)J

    .line 452
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v1}, Lcom/android/camera/MediaSaveService;->access$100(Lcom/android/camera/MediaSaveService;)V

    .line 453
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 387
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method
