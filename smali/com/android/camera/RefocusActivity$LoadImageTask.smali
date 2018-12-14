.class Lcom/android/camera/RefocusActivity$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/RefocusActivity;
    .param p2, "x1"    # Lcom/android/camera/RefocusActivity$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/camera/RefocusActivity$LoadImageTask;-><init>(Lcom/android/camera/RefocusActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "path"    # [Ljava/lang/String;

    .prologue
    .line 237
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 240
    .local v10, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 241
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 242
    new-instance v7, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v7}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 243
    .local v7, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/RefocusActivity;->access$1202(Lcom/android/camera/RefocusActivity;I)I

    .line 245
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-virtual {v7, v1}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v7}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/RefocusActivity;->access$1202(Lcom/android/camera/RefocusActivity;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    iget v8, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 250
    .local v8, "h":I
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 251
    .local v13, "w":I
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v1}, Lcom/android/camera/RefocusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v12, v1, Landroid/content/res/Configuration;->orientation:I

    .line 253
    .local v12, "screenOrientation":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v1}, Lcom/android/camera/RefocusActivity;->access$1300(Lcom/android/camera/RefocusActivity;)I

    move-result v9

    .line 255
    .local v9, "height":I
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v1}, Lcom/android/camera/RefocusActivity;->access$1400(Lcom/android/camera/RefocusActivity;)I

    move-result v14

    .line 260
    .local v14, "width":I
    :goto_1
    const/4 v11, 0x1

    .line 261
    .local v11, "sample":I
    if-gt v8, v9, :cond_0

    if-le v13, v14, :cond_2

    .line 262
    :cond_0
    :goto_2
    div-int v1, v8, v11

    div-int/lit8 v1, v1, 0x2

    if-le v1, v9, :cond_2

    div-int v1, v13, v11

    div-int/lit8 v1, v1, 0x2

    if-le v1, v14, :cond_2

    .line 263
    mul-int/lit8 v11, v11, 0x2

    goto :goto_2

    .line 257
    .end local v9    # "height":I
    .end local v11    # "sample":I
    .end local v14    # "width":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v1}, Lcom/android/camera/RefocusActivity;->access$1400(Lcom/android/camera/RefocusActivity;)I

    move-result v9

    .line 258
    .restart local v9    # "height":I
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v1}, Lcom/android/camera/RefocusActivity;->access$1300(Lcom/android/camera/RefocusActivity;)I

    move-result v14

    .restart local v14    # "width":I
    goto :goto_1

    .line 266
    .restart local v11    # "sample":I
    :cond_2
    const-string v1, "RefocusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sample =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v1, "RefocusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v1, "RefocusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 270
    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 271
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v1}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 274
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v1}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 275
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 276
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    .line 275
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    return-object v0

    .line 247
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "h":I
    .end local v9    # "height":I
    .end local v11    # "sample":I
    .end local v12    # "screenOrientation":I
    .end local v13    # "w":I
    .end local v14    # "width":I
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$LoadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v0}, Lcom/android/camera/RefocusActivity;->access$200(Lcom/android/camera/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
