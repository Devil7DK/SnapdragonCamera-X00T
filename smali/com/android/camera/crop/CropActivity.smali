.class public Lcom/android/camera/crop/CropActivity;
.super Landroid/app/Activity;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/crop/CropActivity$BitmapIOTask;,
        Lcom/android/camera/crop/CropActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final DO_EXTRA_OUTPUT:I = 0x4

.field private static final DO_RETURN_DATA:I = 0x2

.field private static final DO_SET_WALLPAPER:I = 0x1

.field private static final FLAG_CHECK:I = 0x7

.field private static final LOGTAG:Ljava/lang/String; = "CropActivity"

.field public static final MAX_BMAP_IN_INTENT:I = 0xb71b0

.field private static final SELECT_PICTURE:I = 0x1


# instance fields
.field private finalIOGuard:Z

.field private mCropExtras:Lcom/android/camera/crop/CropExtras;

.field private mCropView:Lcom/android/camera/crop/CropView;

.field private mLoadBitmapTask:Lcom/android/camera/crop/CropActivity$LoadBitmapTask;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/RectF;

.field private mOriginalRotation:I

.field private mOutputX:I

.field private mOutputY:I

.field private mSaveButton:Landroid/view/View;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    .line 61
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mLoadBitmapTask:Lcom/android/camera/crop/CropActivity$LoadBitmapTask;

    .line 63
    iput v1, p0, Lcom/android/camera/crop/CropActivity;->mOutputX:I

    .line 64
    iput v1, p0, Lcom/android/camera/crop/CropActivity;->mOutputY:I

    .line 65
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 67
    iput v1, p0, Lcom/android/camera/crop/CropActivity;->mOriginalRotation:I

    .line 68
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 69
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    .line 70
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mSaveButton:Landroid/view/View;

    .line 71
    iput-boolean v1, p0, Lcom/android/camera/crop/CropActivity;->finalIOGuard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/crop/CropActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/crop/CropActivity;Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/crop/CropActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/crop/CropActivity;->doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/crop/CropActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/crop/CropActivity;->mOutputX:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/crop/CropActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/crop/CropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/camera/crop/CropActivity;->mOutputX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/crop/CropActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/crop/CropActivity;->mOutputY:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/crop/CropActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/crop/CropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/camera/crop/CropActivity;->mOutputY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/crop/CropActivity;ZLandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/crop/CropActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/camera/crop/CropActivity;->doneBitmapIO(ZLandroid/content/Intent;)V

    return-void
.end method

.method private cannotLoadImage()V
    .locals 3

    .prologue
    .line 223
    const v2, 0x7f0e042b

    invoke-virtual {p0, v2}, Lcom/android/camera/crop/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 225
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 226
    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private done()V
    .locals 0

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/camera/crop/CropActivity;->finish()V

    .line 598
    return-void
.end method

.method private doneBitmapIO(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 328
    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/android/camera/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, "loading":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    if-eqz p1, :cond_0

    .line 331
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p2}, Lcom/android/camera/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 335
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity;->done()V

    .line 336
    return-void

    .line 333
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/android/camera/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "orientation"    # I

    .prologue
    const/4 v9, 0x0

    .line 184
    const v6, 0x7f0d0052

    invoke-virtual {p0, v6}, Lcom/android/camera/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, "loading":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iput-object p1, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 187
    iput-object p2, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 188
    iput p3, p0, Lcom/android/camera/crop/CropActivity;->mOriginalRotation:I

    .line 189
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v2, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 191
    .local v2, "imgBounds":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    invoke-virtual {v6, p1, v2, v2, p3}, Lcom/android/camera/crop/CropView;->initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    .line 192
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    if-eqz v6, :cond_2

    .line 193
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/camera/crop/CropExtras;->getAspectX()I

    move-result v0

    .line 194
    .local v0, "aspectX":I
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/camera/crop/CropExtras;->getAspectY()I

    move-result v1

    .line 195
    .local v1, "aspectY":I
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/camera/crop/CropExtras;->getOutputX()I

    move-result v6

    iput v6, p0, Lcom/android/camera/crop/CropActivity;->mOutputX:I

    .line 196
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/camera/crop/CropExtras;->getOutputY()I

    move-result v6

    iput v6, p0, Lcom/android/camera/crop/CropActivity;->mOutputY:I

    .line 197
    iget v6, p0, Lcom/android/camera/crop/CropActivity;->mOutputX:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/camera/crop/CropActivity;->mOutputY:I

    if-lez v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    iget v7, p0, Lcom/android/camera/crop/CropActivity;->mOutputX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/crop/CropActivity;->mOutputY:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/crop/CropView;->applyAspect(FF)V

    .line 201
    :cond_0
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/camera/crop/CropExtras;->getSpotlightX()F

    move-result v4

    .line 202
    .local v4, "spotX":F
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/camera/crop/CropExtras;->getSpotlightY()F

    move-result v5

    .line 203
    .local v5, "spotY":F
    cmpl-float v6, v4, v9

    if-lez v6, :cond_1

    cmpl-float v6, v5, v9

    if-lez v6, :cond_1

    .line 204
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    invoke-virtual {v6, v4, v5}, Lcom/android/camera/crop/CropView;->setWallpaperSpotlight(FF)V

    .line 206
    :cond_1
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 207
    iget-object v6, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    int-to-float v7, v0

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/crop/CropView;->applyAspect(FF)V

    .line 210
    .end local v0    # "aspectX":I
    .end local v1    # "aspectY":I
    .end local v4    # "spotX":F
    .end local v5    # "spotY":F
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/camera/crop/CropActivity;->enableSave(Z)V

    .line 217
    .end local v2    # "imgBounds":Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 212
    :cond_3
    const-string v6, "CropActivity"

    const-string v7, "could not load image for cropping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity;->cannotLoadImage()V

    .line 214
    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity;->done()V

    goto :goto_0
.end method

.method private enableSave(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mSaveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method private getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "imageBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 672
    iget-object v3, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    invoke-virtual {v3}, Lcom/android/camera/crop/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v0

    .line 673
    .local v0, "crop":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    invoke-virtual {v3}, Lcom/android/camera/crop/CropView;->getPhoto()Landroid/graphics/RectF;

    move-result-object v1

    .line 674
    .local v1, "photo":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 675
    :cond_0
    const-string v3, "CropActivity"

    const-string v4, "could not get crop"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v2, 0x0

    .line 679
    :goto_0
    return-object v2

    .line 678
    :cond_1
    invoke-static {v0, v1, p1}, Lcom/android/camera/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 679
    .local v2, "scaledCrop":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method protected static getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "photoBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    .line 601
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 602
    .local v1, "imageBounds":Landroid/graphics/RectF;
    invoke-static {p1, p2, v1}, Lcom/android/camera/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 603
    .local v0, "crop":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 604
    const/4 v3, 0x0

    .line 608
    :goto_0
    return-object v3

    .line 606
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 607
    .local v2, "intCrop":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 608
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 609
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 608
    invoke-static {p0, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "max_size"    # I

    .prologue
    const/4 v5, 0x1

    .line 613
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    if-ge p1, v3, :cond_1

    .line 614
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad argument to getDownsampledBitmap()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 616
    :cond_1
    const/4 v1, 0x0

    .line 617
    .local v1, "shifts":I
    invoke-static {p0}, Lcom/android/camera/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 618
    .local v2, "size":I
    :goto_0
    if-le v2, p1, :cond_2

    .line 619
    add-int/lit8 v1, v1, 0x1

    .line 620
    div-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 622
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/2addr v3, v1

    .line 623
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/2addr v4, v1

    .line 622
    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 624
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 625
    const/4 v0, 0x0

    .line 631
    .end local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v0

    .line 628
    .restart local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v0}, Lcom/android/camera/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    if-le v3, p1, :cond_3

    .line 629
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method protected static getExtrasFromIntent(Landroid/content/Intent;)Lcom/android/camera/crop/CropExtras;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 638
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 639
    .local v13, "extras":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    .line 640
    new-instance v0, Lcom/android/camera/crop/CropExtras;

    const-string v1, "outputX"

    invoke-virtual {v13, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "outputY"

    .line 641
    invoke-virtual {v13, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "scale"

    .line 642
    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "scaleUpIfNeeded"

    .line 643
    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    const-string v4, "aspectX"

    .line 644
    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "aspectY"

    .line 645
    invoke-virtual {v13, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "set-as-wallpaper"

    .line 646
    invoke-virtual {v13, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "return-data"

    .line 647
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "output"

    .line 648
    invoke-virtual {v13, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    const-string v9, "outputFormat"

    .line 649
    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "showWhenLocked"

    .line 650
    invoke-virtual {v13, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "spotlightX"

    .line 651
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    const-string v12, "spotlightY"

    .line 652
    invoke-virtual {v13, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/crop/CropExtras;-><init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V

    .line 654
    :goto_1
    return-object v0

    :cond_0
    move v3, v10

    .line 643
    goto :goto_0

    .line 654
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "requestFormat"    # Ljava/lang/String;

    .prologue
    .line 662
    if-nez p0, :cond_1

    const-string v0, "jpg"

    .line 665
    .local v0, "outputFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 666
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "png"

    :goto_1
    return-object v1

    .end local v0    # "outputFormat":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 662
    goto :goto_0

    .line 666
    .restart local v0    # "outputFormat":Ljava/lang/String;
    :cond_2
    const-string v1, "jpg"

    goto :goto_1
.end method

.method private getScreenImageSize()I
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 160
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/camera/crop/CropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 161
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V
    .locals 13
    .param p1, "flags"    # I
    .param p2, "currentBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "sourceUri"    # Landroid/net/Uri;
    .param p4, "destUri"    # Landroid/net/Uri;
    .param p5, "cropBounds"    # Landroid/graphics/RectF;
    .param p6, "photoBounds"    # Landroid/graphics/RectF;
    .param p7, "currentBitmapBounds"    # Landroid/graphics/RectF;
    .param p8, "format"    # Ljava/lang/String;
    .param p9, "rotation"    # I

    .prologue
    .line 307
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p2, :cond_0

    .line 308
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_0

    .line 316
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 317
    const v1, 0x7f0e042d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 320
    :cond_2
    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/android/camera/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 321
    .local v12, "loading":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    new-instance v0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;

    iget v10, p0, Lcom/android/camera/crop/CropActivity;->mOutputX:I

    iget v11, p0, Lcom/android/camera/crop/CropActivity;->mOutputY:I

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;-><init>(Lcom/android/camera/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V

    .line 324
    .local v0, "ioTask":Lcom/android/camera/crop/CropActivity$BitmapIOTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-direct {p0, v3}, Lcom/android/camera/crop/CropActivity;->enableSave(Z)V

    .line 170
    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/android/camera/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "loading":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    new-instance v1, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;

    invoke-direct {v1, p0}, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;-><init>(Lcom/android/camera/crop/CropActivity;)V

    iput-object v1, p0, Lcom/android/camera/crop/CropActivity;->mLoadBitmapTask:Lcom/android/camera/crop/CropActivity$LoadBitmapTask;

    .line 173
    iget-object v1, p0, Lcom/android/camera/crop/CropActivity;->mLoadBitmapTask:Lcom/android/camera/crop/CropActivity$LoadBitmapTask;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 178
    .end local v0    # "loading":Landroid/view/View;
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity;->cannotLoadImage()V

    .line 176
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity;->done()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 150
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 151
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/camera/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropView;->configChanged()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/crop/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-static {v1}, Lcom/android/camera/crop/CropActivity;->getExtrasFromIntent(Landroid/content/Intent;)Lcom/android/camera/crop/CropExtras;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    .line 98
    iget-object v3, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v3}, Lcom/android/camera/crop/CropExtras;->getShowWhenLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/crop/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 102
    :cond_0
    const v3, 0x7f04000a

    invoke-virtual {p0, v3}, Lcom/android/camera/crop/CropActivity;->setContentView(I)V

    .line 103
    const v3, 0x7f0d0051

    invoke-virtual {p0, v3}, Lcom/android/camera/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/crop/CropView;

    iput-object v3, p0, Lcom/android/camera/crop/CropActivity;->mCropView:Lcom/android/camera/crop/CropView;

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/crop/CropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 107
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 108
    const v3, 0x7f040009

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 110
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "mSaveButton":Landroid/view/View;
    new-instance v3, Lcom/android/camera/crop/CropActivity$1;

    invoke-direct {v3, p0}, Lcom/android/camera/crop/CropActivity$1;-><init>(Lcom/android/camera/crop/CropActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .end local v2    # "mSaveButton":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 120
    iget-object v3, p0, Lcom/android/camera/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/camera/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 122
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mLoadBitmapTask:Lcom/android/camera/crop/CropActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mLoadBitmapTask:Lcom/android/camera/crop/CropActivity$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->cancel(Z)Z

    .line 135
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    return-void
.end method

.method protected startFinishOutput()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/android/camera/crop/CropActivity;->finalIOGuard:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/crop/CropActivity;->finalIOGuard:Z

    .line 268
    invoke-direct {p0, v2}, Lcom/android/camera/crop/CropActivity;->enableSave(Z)V

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "destinationUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 271
    .local v1, "flags":I
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    .line 274
    if-eqz v4, :cond_1

    .line 275
    or-int/lit8 v1, v1, 0x4

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropExtras;->getSetAsWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    or-int/lit8 v1, v1, 0x1

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropExtras;->getReturnData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    or-int/lit8 v1, v1, 0x2

    .line 285
    :cond_3
    if-nez v1, :cond_4

    .line 286
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/camera/crop/SaveImage;->makeAndInsertUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 287
    if-eqz v4, :cond_4

    .line 288
    or-int/lit8 v1, v1, 0x4

    .line 291
    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 292
    new-instance v6, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v6, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 293
    .local v6, "photo":Landroid/graphics/RectF;
    invoke-direct {p0, v6}, Lcom/android/camera/crop/CropActivity;->getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 294
    .local v5, "crop":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/camera/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    if-nez v0, :cond_5

    const/4 v8, 0x0

    .line 296
    :goto_1
    iget v9, p0, Lcom/android/camera/crop/CropActivity;->mOriginalRotation:I

    move-object v0, p0

    .line 294
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/crop/CropActivity;->startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity;->mCropExtras:Lcom/android/camera/crop/CropExtras;

    .line 296
    invoke-virtual {v0}, Lcom/android/camera/crop/CropExtras;->getOutputFormat()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 299
    .end local v5    # "crop":Landroid/graphics/RectF;
    .end local v6    # "photo":Landroid/graphics/RectF;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 300
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity;->done()V

    goto/16 :goto_0
.end method
