.class Lcom/android/camera/CameraActivity$UpdateThumbnailTask;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckOrientation:Z

.field private mJpegData:[B

.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;[BZ)V
    .locals 0
    .param p2, "jpegData"    # [B
    .param p3, "checkOrientation"    # Z

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    .line 825
    iput-boolean p3, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mCheckOrientation:Z

    .line 826
    return-void
.end method

.method private decodeImageCenter(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 881
    const/4 v14, 0x0

    .line 882
    .local v14, "orientation":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mCheckOrientation:Z

    if-eqz v2, :cond_0

    .line 883
    new-instance v11, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v11}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 885
    .local v11, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    if-eqz v2, :cond_1

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    invoke-virtual {v11, v2}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 890
    :goto_0
    invoke-static {v11}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 896
    .end local v11    # "exif":Lcom/android/camera/exif/ExifInterface;
    :cond_0
    :goto_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 897
    .local v13, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    if-eqz v2, :cond_2

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    array-length v4, v4

    invoke-static {v2, v3, v4, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 904
    :goto_2
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    .line 905
    .local v19, "w":I
    iget v12, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 906
    .local v12, "h":I
    move/from16 v0, v19

    if-le v0, v12, :cond_3

    move v8, v12

    .line 908
    .local v8, "d":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 909
    .local v18, "target":I
    const/16 v16, 0x1

    .line 910
    .local v16, "sample":I
    move/from16 v0, v18

    if-le v8, v0, :cond_4

    .line 911
    :goto_4
    div-int v2, v8, v16

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v18

    if-le v2, v0, :cond_4

    .line 912
    mul-int/lit8 v16, v16, 0x2

    goto :goto_4

    .line 888
    .end local v8    # "d":I
    .end local v12    # "h":I
    .end local v13    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "sample":I
    .end local v18    # "target":I
    .end local v19    # "w":I
    .restart local v11    # "exif":Lcom/android/camera/exif/ExifInterface;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v2

    goto :goto_1

    .line 901
    .end local v11    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v13    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_2

    .restart local v12    # "h":I
    .restart local v19    # "w":I
    :cond_3
    move/from16 v8, v19

    .line 906
    goto :goto_3

    .line 915
    .restart local v8    # "d":I
    .restart local v16    # "sample":I
    .restart local v18    # "target":I
    :cond_4
    mul-int v17, v16, v18

    .line 916
    .local v17, "st":I
    new-instance v15, Landroid/graphics/Rect;

    sub-int v2, v19, v17

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v12, v17

    div-int/lit8 v3, v3, 0x2

    add-int v4, v19, v17

    div-int/lit8 v4, v4, 0x2

    add-int v5, v12, v17

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v15, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 918
    .local v15, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 919
    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 922
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    if-nez v2, :cond_6

    .line 923
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 930
    .local v9, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_5
    invoke-virtual {v9, v15, v13}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 931
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_5

    .line 932
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 933
    .local v6, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v14

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 934
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 935
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    .line 934
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 937
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :cond_5
    :goto_6
    return-object v1

    .line 925
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    array-length v4, v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    .restart local v9    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    goto :goto_5

    .line 927
    .end local v9    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :catch_1
    move-exception v10

    .line 928
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_6
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 830
    iget-object v5, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    if-eqz v5, :cond_1

    .line 831
    invoke-direct {p0, v4}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->decodeImageCenter(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 848
    :cond_0
    :goto_0
    return-object v4

    .line 833
    :cond_1
    iget-object v5, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    .line 834
    .local v0, "adapter":Lcom/android/camera/data/LocalDataAdapter;
    invoke-interface {v0, v6}, Lcom/android/camera/data/LocalDataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v1

    .line 835
    .local v1, "img":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-eqz v1, :cond_0

    .line 838
    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 839
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5, v3}, Lcom/android/camera/CameraActivity;->access$2100(Lcom/android/camera/CameraActivity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 844
    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->isPhoto()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 845
    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->decodeImageCenter(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 848
    :cond_2
    invoke-static {v2, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 819
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 870
    if-eqz p1, :cond_0

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 873
    :cond_0
    const/4 p1, 0x0

    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    .line 875
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 819
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 855
    if-nez p1, :cond_1

    .line 856
    iget-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    iget-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    .line 866
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 819
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
