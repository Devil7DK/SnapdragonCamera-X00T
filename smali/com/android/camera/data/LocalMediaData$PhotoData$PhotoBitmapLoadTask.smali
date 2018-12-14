.class final Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;
.super Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData$PhotoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoBitmapLoadTask"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field private final mDecodeHeight:I

.field private final mDecodeWidth:I

.field private mNeedsRefresh:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/LocalMediaData$PhotoData;Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/camera/data/LocalDataAdapter;)V
    .locals 0
    .param p2, "v"    # Landroid/widget/ImageView;
    .param p3, "decodeWidth"    # I
    .param p4, "decodeHeight"    # I
    .param p5, "resolver"    # Landroid/content/ContentResolver;
    .param p6, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;-><init>(Lcom/android/camera/data/LocalMediaData;Landroid/widget/ImageView;)V

    .line 491
    iput p3, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeWidth:I

    .line 492
    iput p4, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeHeight:I

    .line 493
    iput-object p5, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mResolver:Landroid/content/ContentResolver;

    .line 494
    iput-object p6, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 495
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 499
    const/4 v12, 0x1

    .line 500
    .local v12, "sampleSize":I
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeWidth:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeHeight:I

    if-le v1, v2, :cond_1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 502
    .local v9, "heightRatio":I
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 503
    .local v14, "widthRatio":I
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 511
    .end local v9    # "heightRatio":I
    .end local v14    # "widthRatio":I
    :cond_1
    const/4 v8, 0x0

    .line 512
    .local v8, "decodedWidth":I
    const/4 v7, 0x0

    .line 513
    .local v7, "decodedHeight":I
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 514
    .local v10, "justBoundsOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 515
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget-object v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 516
    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_2

    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_2

    .line 517
    iget v8, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 518
    iget v7, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 524
    :cond_2
    if-lez v8, :cond_5

    if-lez v7, :cond_5

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    if-ne v8, v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    if-eq v7, v1, :cond_5

    .line 526
    :cond_3
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .local v13, "values":Landroid/content/ContentValues;
    const-string v1, "width"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string v1, "height"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v2}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mNeedsRefresh:Z

    .line 531
    const-string v1, "CAM_PhotoData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v3}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been updated with"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " correct size!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x0

    .line 552
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_0
    return-object v0

    .line 536
    :cond_5
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 537
    .local v11, "opts":Landroid/graphics/BitmapFactory$Options;
    iput v12, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 538
    invoke-static {}, Lcom/android/camera/data/LocalMediaData$PhotoData;->access$000()[B

    move-result-object v1

    iput-object v1, v11, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 539
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v1}, Lcom/android/camera/data/LocalMediaData$PhotoData;->isUsing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 540
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 542
    :cond_7
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget-object v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-static {v1, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-static {v1}, Lcom/android/camera/data/LocalMediaData$PhotoData;->access$100(Lcom/android/camera/data/LocalMediaData$PhotoData;)I

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 545
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v1}, Lcom/android/camera/data/LocalMediaData$PhotoData;->isUsing()Z

    move-result v1

    if-nez v1, :cond_9

    .line 546
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 548
    :cond_9
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 549
    .local v5, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-static {v1}, Lcom/android/camera/data/LocalMediaData$PhotoData;->access$100(Lcom/android/camera/data/LocalMediaData$PhotoData;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 550
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 479
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 557
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    .line 558
    iget-boolean v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mNeedsRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v2}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/LocalDataAdapter;->refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 561
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 479
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
