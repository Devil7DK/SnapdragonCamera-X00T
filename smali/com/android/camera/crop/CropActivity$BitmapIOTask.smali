.class Lcom/android/camera/crop/CropActivity$BitmapIOTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/crop/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapIOTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCrop:Landroid/graphics/RectF;

.field mFlags:I

.field mInStream:Ljava/io/InputStream;

.field mInUri:Landroid/net/Uri;

.field mOrig:Landroid/graphics/RectF;

.field mOutStream:Ljava/io/OutputStream;

.field mOutUri:Landroid/net/Uri;

.field mOutputFormat:Ljava/lang/String;

.field mPhoto:Landroid/graphics/RectF;

.field mResultIntent:Landroid/content/Intent;

.field mRotation:I

.field private final mWPManager:Landroid/app/WallpaperManager;

.field final synthetic this$0:Lcom/android/camera/crop/CropActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 338
    const-class v0, Lcom/android/camera/crop/CropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V
    .locals 4
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "destUri"    # Landroid/net/Uri;
    .param p4, "outputFormat"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "cropBounds"    # Landroid/graphics/RectF;
    .param p7, "photoBounds"    # Landroid/graphics/RectF;
    .param p8, "originalBitmapBounds"    # Landroid/graphics/RectF;
    .param p9, "rotation"    # I
    .param p10, "outputX"    # I
    .param p11, "outputY"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 369
    iput-object p1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 341
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    .line 342
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 343
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 344
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 345
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 346
    iput v2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 347
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 348
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 349
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 350
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    .line 351
    iput v2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 370
    iput-object p4, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 371
    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 372
    iput-object p3, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 373
    iput-object p2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 374
    iput p5, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 375
    iput-object p6, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 376
    iput-object p7, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 377
    iput-object p8, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 378
    invoke-virtual {p1}, Lcom/android/camera/crop/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    .line 379
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    .line 380
    if-gez p9, :cond_0

    neg-int p9, p9

    .end local p9    # "rotation":I
    :cond_0
    iput p9, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 381
    iget v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 382
    iget v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 383
    invoke-static {p1, p10}, Lcom/android/camera/crop/CropActivity;->access$202(Lcom/android/camera/crop/CropActivity;I)I

    .line 384
    invoke-static {p1, p11}, Lcom/android/camera/crop/CropActivity;->access$302(Lcom/android/camera/crop/CropActivity;I)I

    .line 386
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 388
    const-string v1, "CropActivity"

    const-string v2, "cannot write file, no output URI given"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    :goto_0
    and-int/lit8 v1, p5, 0x5

    if-eqz v1, :cond_2

    .line 399
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 401
    :cond_2
    return-void

    .line 391
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "CropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot write file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private regenerateInputStream()V
    .locals 4

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 356
    const-string v1, "CropActivity"

    const-string v2, "cannot read original file, no input URI given"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-virtual {v1}, Lcom/android/camera/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "CropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 31
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 405
    const/16 v21, 0x0

    .line 406
    .local v21, "failure":Z
    const/4 v4, 0x0

    aget-object v23, p1, v4

    .line 409
    .local v23, "img":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    invoke-static {v4, v5, v6}, Lcom/android/camera/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v30

    .line 411
    .local v30, "trueCrop":Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 412
    .local v8, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 413
    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 414
    if-eqz v30, :cond_0

    .line 415
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 416
    .local v26, "rounded":Landroid/graphics/Rect;
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v5, "cropped-rect"

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 422
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v26    # "rounded":Landroid/graphics/Rect;
    .end local v30    # "trueCrop":Landroid/graphics/RectF;
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 423
    sget-boolean v4, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v23, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 424
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    move-object/from16 v0, v23

    invoke-static {v0, v4, v5}, Lcom/android/camera/crop/CropActivity;->getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 425
    .local v3, "ret":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 426
    const v4, 0xb71b0

    invoke-static {v3, v4}, Lcom/android/camera/crop/CropActivity;->getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 428
    :cond_2
    if-nez v3, :cond_4

    .line 429
    const-string v4, "CropActivity"

    const-string v5, "could not downsample bitmap to return in data"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v21, 0x1

    .line 446
    .end local v3    # "ret":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v4, :cond_10

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    invoke-static {v4, v5, v6}, Lcom/android/camera/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v30

    .line 449
    .restart local v30    # "trueCrop":Landroid/graphics/RectF;
    if-nez v30, :cond_6

    .line 450
    const-string v4, "CropActivity"

    const-string v5, "cannot find crop for full size image"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/16 v21, 0x1

    .line 452
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 584
    .end local v30    # "trueCrop":Landroid/graphics/RectF;
    :goto_1
    return-object v4

    .line 432
    .restart local v3    # "ret":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v4, :cond_5

    .line 433
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 434
    .restart local v8    # "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 435
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 436
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 435
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 437
    .local v28, "tmp":Landroid/graphics/Bitmap;
    if-eqz v28, :cond_5

    .line 438
    move-object/from16 v3, v28

    .line 441
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v28    # "tmp":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v5, "data"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 454
    .end local v3    # "ret":Landroid/graphics/Bitmap;
    .restart local v30    # "trueCrop":Landroid/graphics/RectF;
    :cond_6
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    .line 455
    .local v27, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gtz v4, :cond_8

    .line 458
    :cond_7
    const-string v4, "CropActivity"

    const-string v5, "crop has bad values for full size image"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 v21, 0x1

    .line 460
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 464
    :cond_8
    const/16 v19, 0x0

    .line 466
    .local v19, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 471
    :goto_2
    const/4 v9, 0x0

    .line 472
    .local v9, "crop":Landroid/graphics/Bitmap;
    if-eqz v19, :cond_9

    .line 474
    new-instance v24, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 475
    .local v24, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 476
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 477
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 480
    .end local v24    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_9
    if-nez v9, :cond_b

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 483
    const/16 v22, 0x0

    .line 484
    .local v22, "fullSize":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v4, :cond_a

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 487
    :cond_a
    if-eqz v22, :cond_b

    .line 488
    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 489
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 490
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 488
    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 494
    .end local v22    # "fullSize":Landroid/graphics/Bitmap;
    :cond_b
    if-nez v9, :cond_c

    .line 495
    const-string v4, "CropActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot decode file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v21, 0x1

    .line 497
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 467
    .end local v9    # "crop":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v20

    .line 468
    .local v20, "e":Ljava/io/IOException;
    const-string v4, "CropActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot open region decoder for file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 499
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v9    # "crop":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v4}, Lcom/android/camera/crop/CropActivity;->access$200(Lcom/android/camera/crop/CropActivity;)I

    move-result v4

    if-lez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v4}, Lcom/android/camera/crop/CropActivity;->access$300(Lcom/android/camera/crop/CropActivity;)I

    move-result v4

    if-lez v4, :cond_11

    .line 500
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 501
    .restart local v8    # "m":Landroid/graphics/Matrix;
    new-instance v18, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 502
    .local v18, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v4, :cond_d

    .line 503
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 504
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 506
    :cond_d
    new-instance v25, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v6}, Lcom/android/camera/crop/CropActivity;->access$200(Lcom/android/camera/crop/CropActivity;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v7}, Lcom/android/camera/crop/CropActivity;->access$300(Lcom/android/camera/crop/CropActivity;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 507
    .local v25, "returnRect":Landroid/graphics/RectF;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 508
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 509
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    .line 510
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 509
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 511
    .restart local v28    # "tmp":Landroid/graphics/Bitmap;
    if-eqz v28, :cond_e

    .line 512
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 513
    .local v16, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 514
    move-object/from16 v9, v28

    .line 526
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v16    # "c":Landroid/graphics/Canvas;
    .end local v18    # "cropRect":Landroid/graphics/RectF;
    .end local v25    # "returnRect":Landroid/graphics/RectF;
    .end local v28    # "tmp":Landroid/graphics/Bitmap;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 527
    invoke-static {v4}, Lcom/android/camera/crop/CropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/crop/CropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v17

    .line 530
    .local v17, "cf":Landroid/graphics/Bitmap$CompressFormat;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_13

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-eqz v4, :cond_f

    const/16 v4, 0x5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 532
    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 533
    :cond_f
    const-string v4, "CropActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to compress bitmap to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/16 v21, 0x1

    .line 584
    .end local v9    # "crop":Landroid/graphics/Bitmap;
    .end local v17    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v19    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v27    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v30    # "trueCrop":Landroid/graphics/RectF;
    :cond_10
    :goto_4
    if-nez v21, :cond_18

    const/4 v4, 0x1

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 516
    .restart local v9    # "crop":Landroid/graphics/Bitmap;
    .restart local v19    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v27    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v30    # "trueCrop":Landroid/graphics/RectF;
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v4, :cond_e

    .line 517
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 518
    .restart local v8    # "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 519
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 520
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object v14, v8

    .line 519
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 521
    .restart local v28    # "tmp":Landroid/graphics/Bitmap;
    if-eqz v28, :cond_e

    .line 522
    move-object/from16 v9, v28

    goto :goto_3

    .line 536
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v28    # "tmp":Landroid/graphics/Bitmap;
    .restart local v17    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4

    .line 540
    :cond_13
    new-instance v29, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 541
    .local v29, "tmpOut":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x5a

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 545
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_14

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-nez v4, :cond_15

    .line 547
    const-string v4, "CropActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to compress bitmap to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 548
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 547
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v21, 0x1

    .line 564
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    if-eqz v4, :cond_10

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    if-nez v4, :cond_16

    .line 566
    const-string v4, "CropActivity"

    const-string v5, "no wallpaper manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 552
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 554
    :catch_1
    move-exception v20

    .line 555
    .restart local v20    # "e":Ljava/io/IOException;
    const-string v4, "CropActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to compress bitmap to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 557
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    const/16 v21, 0x1

    goto :goto_6

    .line 570
    .end local v20    # "e":Ljava/io/IOException;
    :cond_16
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 571
    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 570
    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 572
    :catch_2
    move-exception v20

    .line 573
    .restart local v20    # "e":Ljava/io/IOException;
    const-string v4, "CropActivity"

    const-string v5, "cannot write stream to wallpaper"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    const/16 v21, 0x1

    .line 575
    goto/16 :goto_4

    .line 579
    .end local v20    # "e":Ljava/io/IOException;
    :cond_17
    const-string v4, "CropActivity"

    const-string v5, "cannot compress bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 584
    .end local v9    # "crop":Landroid/graphics/Bitmap;
    .end local v17    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v19    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v27    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v29    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    .end local v30    # "trueCrop":Landroid/graphics/RectF;
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 590
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 591
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/android/camera/crop/CropActivity;->access$400(Lcom/android/camera/crop/CropActivity;ZLandroid/content/Intent;)V

    .line 592
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
