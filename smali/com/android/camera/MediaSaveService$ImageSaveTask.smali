.class Lcom/android/camera/MediaSaveService$ImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaveTask"
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
.field private data:[B

.field private date:J

.field private exif:Lcom/android/camera/exif/ExifInterface;

.field private height:I

.field private listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private orientation:I

.field private pictureFormat:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p11, "resolver"    # Landroid/content/ContentResolver;
    .param p12, "listener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p13, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->data:[B

    .line 347
    iput-object p3, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    .line 348
    iput-wide p4, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->date:J

    .line 349
    iput-object p6, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    .line 350
    iput p7, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->width:I

    .line 351
    iput p8, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->height:I

    .line 352
    iput p9, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->orientation:I

    .line 353
    iput-object p10, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 354
    iput-object p11, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 355
    iput-object p12, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 356
    iput-object p13, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->pictureFormat:Ljava/lang/String;

    .line 357
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 12
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 366
    iget v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->height:I

    if-nez v0, :cond_1

    .line 368
    :cond_0
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 369
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 370
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 371
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->width:I

    .line 372
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->height:I

    .line 374
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->date:J

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->orientation:I

    iget-object v6, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v7, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->data:[B

    iget v8, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->width:I

    iget v9, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->height:I

    iget-object v10, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->pictureFormat:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$ImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    .line 382
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    iget-object v2, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v2}, Lcom/android/camera/MediaSaveService;->access$000(Lcom/android/camera/MediaSaveService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaveService;->access$002(Lcom/android/camera/MediaSaveService;J)J

    .line 383
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v1}, Lcom/android/camera/MediaSaveService;->access$100(Lcom/android/camera/MediaSaveService;)V

    .line 384
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 331
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$ImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method
