.class Lcom/android/camera/BestpictureActivity$ImageLoadingThread;
.super Ljava/lang/Thread;
.source "BestpictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BestpictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BestpictureActivity;Lcom/android/camera/BestpictureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p2, "x1"    # Lcom/android/camera/BestpictureActivity$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;-><init>(Lcom/android/camera/BestpictureActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v2}, Lcom/android/camera/BestpictureActivity;->access$1300(Lcom/android/camera/BestpictureActivity;)V

    .line 514
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v9, v2, :cond_3

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity;->access$1400(Lcom/android/camera/BestpictureActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/BestpictureActivity;->NAMES:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 516
    .local v12, "path":Ljava/lang/String;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 517
    .local v10, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 518
    invoke-static {v12, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 519
    new-instance v7, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v7}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 520
    .local v7, "exif":Lcom/android/camera/exif/ExifInterface;
    const/4 v11, 0x0

    .line 522
    .local v11, "orientation":I
    :try_start_0
    invoke-virtual {v7, v12}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 523
    invoke-static {v7}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 526
    :goto_1
    iget v8, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 527
    .local v8, "h":I
    iget v14, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 528
    .local v14, "w":I
    const/4 v13, 0x1

    .line 529
    .local v13, "sample":I
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v2}, Lcom/android/camera/BestpictureActivity;->access$1500(Lcom/android/camera/BestpictureActivity;)I

    move-result v2

    if-gt v8, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v2}, Lcom/android/camera/BestpictureActivity;->access$1600(Lcom/android/camera/BestpictureActivity;)I

    move-result v2

    if-le v14, v2, :cond_1

    .line 530
    :cond_0
    :goto_2
    div-int v2, v8, v13

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity;->access$1500(Lcom/android/camera/BestpictureActivity;)I

    move-result v3

    if-le v2, v3, :cond_1

    div-int v2, v14, v13

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity;->access$1600(Lcom/android/camera/BestpictureActivity;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 531
    mul-int/lit8 v13, v13, 0x2

    goto :goto_2

    .line 535
    :cond_1
    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 536
    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 537
    invoke-static {v12, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 538
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_2

    .line 539
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 540
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v11

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 542
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    .line 541
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v2}, Lcom/android/camera/BestpictureActivity;->access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v2

    invoke-virtual {v2, v9, v0}, Lcom/android/camera/BestpictureActivity$ImageItems;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 514
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 546
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "h":I
    .end local v10    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "sample":I
    .end local v14    # "w":I
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$1700(Lcom/android/camera/BestpictureActivity;)V

    .line 547
    return-void

    .line 524
    .restart local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v10    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v12    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
