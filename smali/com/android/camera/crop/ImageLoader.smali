.class public final Lcom/android/camera/crop/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final BITMAP_LOAD_BACKOUT_ATTEMPTS:I = 0x5

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x5f

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final LOGTAG:Ljava/lang/String; = "ImageLoader"

.field public static final ORI_FLIP_HOR:I = 0x2

.field public static final ORI_FLIP_VERT:I = 0x4

.field public static final ORI_NORMAL:I = 0x1

.field public static final ORI_ROTATE_180:I = 0x3

.field public static final ORI_ROTATE_270:I = 0x8

.field public static final ORI_ROTATE_90:I = 0x6

.field public static final ORI_TRANSPOSE:I = 0x5

.field public static final ORI_TRANSVERSE:I = 0x7

.field private static final OVERDRAW_ZOOM:F = 1.2f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeResourceWithBackouts(Landroid/content/res/Resources;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 389
    const/4 v2, 0x1

    .line 390
    .local v2, "noBitmap":Z
    const/4 v3, 0x0

    .line 391
    .local v3, "num_tries":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v4, v5, :cond_0

    .line 392
    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 396
    .local v0, "bmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_2

    .line 399
    :try_start_0
    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 401
    const/4 v2, 0x0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 405
    throw v1

    .line 407
    :cond_1
    const/4 v0, 0x0

    .line 408
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 409
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 412
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    return-object v0
.end method

.method public static getExif(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 416
    invoke-static {p0, p1}, Lcom/android/camera/crop/ImageLoader;->getLocalPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 418
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 419
    .local v2, "localUri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/crop/ImageLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "mimeType":Ljava/lang/String;
    const-string v6, "image/jpeg"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 432
    .end local v2    # "localUri":Landroid/net/Uri;
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 424
    .restart local v2    # "localUri":Landroid/net/Uri;
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 425
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifInterface;->getAllTags()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 427
    .local v5, "taglist":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/exif/ExifTag;>;"
    goto :goto_0

    .line 428
    .end local v1    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v5    # "taglist":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/exif/ExifTag;>;"
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ImageLoader"

    const-string v7, "Failed to read EXIF tags"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getLocalPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 84
    :goto_0
    return-object v3

    .line 80
    :cond_0
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 81
    .local v7, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "path":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v3, v8

    .line 84
    goto :goto_0
.end method

.method public static getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getOrientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    const/4 v6, 0x0

    .line 99
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 104
    .local v10, "ori":I
    sparse-switch v10, :sswitch_data_0

    .line 112
    const/4 v11, 0x1

    .line 122
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 156
    .end local v10    # "ori":I
    :goto_0
    :pswitch_0
    return v11

    .line 106
    .restart local v10    # "ori":I
    :sswitch_0
    const/4 v11, 0x6

    .line 122
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 108
    :sswitch_1
    const/16 v11, 0x8

    .line 122
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 110
    :sswitch_2
    const/4 v11, 0x3

    .line 122
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v10    # "ori":I
    :cond_2
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 126
    :goto_1
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    invoke-static {p1}, Lcom/android/camera/crop/ImageLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "mimeType":Ljava/lang/String;
    const-string v0, "image/jpeg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    const/4 v11, 0x1

    goto :goto_0

    .line 115
    .end local v9    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 122
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    .line 122
    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/camera/crop/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 131
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, "path":Ljava/lang/String;
    new-instance v8, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v8}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 134
    .local v8, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_1
    invoke-virtual {v8, v12}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 135
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v8, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v13

    .line 136
    .local v13, "tagval":Ljava/lang/Integer;
    if-eqz v13, :cond_4

    .line 137
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v11

    .line 138
    .local v11, "orientation":I
    packed-switch v11, :pswitch_data_0

    .line 149
    const/4 v11, 0x1

    goto :goto_0

    .line 152
    .end local v11    # "orientation":I
    .end local v13    # "tagval":Ljava/lang/Integer;
    :catch_3
    move-exception v7

    .line 153
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "ImageLoader"

    const-string v1, "Failed to read EXIF orientation"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x1

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getMetadataRotation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/android/camera/crop/ImageLoader;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 165
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 173
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 167
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 169
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 171
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Landroid/net/Uri;

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "postfix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 68
    .local v1, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    return-object v1
.end method

.method public static loadBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v2, 0x0

    .line 249
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 250
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad argument to loadBitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_1
    const/4 v1, 0x0

    .line 254
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 255
    const/4 v3, 0x0

    invoke-static {v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 259
    invoke-static {v1}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 261
    :goto_0
    return-object v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    invoke-static {v1}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static loadBitmapBounds(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 229
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 230
    .local v0, "o":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1, v0}, Lcom/android/camera/crop/ImageLoader;->loadBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 231
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static loadBitmapWithBackouts(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "sampleSize"    # I

    .prologue
    .line 345
    const/4 v2, 0x1

    .line 346
    .local v2, "noBitmap":Z
    const/4 v3, 0x0

    .line 347
    .local v3, "num_tries":I
    if-gtz p2, :cond_0

    .line 348
    const/4 p2, 0x1

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 351
    .local v0, "bmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_2

    .line 354
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/camera/crop/ImageLoader;->loadDownsampledBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 355
    const/4 v2, 0x0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 359
    throw v1

    .line 361
    :cond_1
    const/4 v0, 0x0

    .line 362
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 363
    mul-int/lit8 p2, p2, 0x2

    .line 364
    goto :goto_0

    .line 366
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    return-object v0
.end method

.method public static loadConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSideLength"    # I
    .param p3, "originalBounds"    # Landroid/graphics/Rect;
    .param p4, "useMin"    # Z

    .prologue
    const/4 v5, 0x0

    .line 278
    if-lez p2, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 279
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "bad argument to getScaledBitmap"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    :cond_1
    invoke-static {p1, p0}, Lcom/android/camera/crop/ImageLoader;->loadBitmapBounds(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v3

    .line 283
    .local v3, "storedBounds":Landroid/graphics/Rect;
    if-eqz p3, :cond_2

    .line 284
    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 286
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 287
    .local v4, "w":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 290
    .local v0, "h":I
    if-lez v4, :cond_3

    if-gtz v0, :cond_4

    .line 312
    :cond_3
    :goto_0
    return-object v5

    .line 295
    :cond_4
    const/4 v1, 0x0

    .line 296
    .local v1, "imageSide":I
    if-eqz p4, :cond_5

    .line 297
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 301
    :goto_1
    const/4 v2, 0x1

    .line 302
    .local v2, "sampleSize":I
    :goto_2
    if-le v1, p2, :cond_6

    .line 303
    ushr-int/lit8 v1, v1, 0x1

    .line 304
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 299
    .end local v2    # "sampleSize":I
    :cond_5
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 308
    .restart local v2    # "sampleSize":I
    :cond_6
    if-lez v2, :cond_3

    .line 309
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/2addr v6, v2

    if-lez v6, :cond_3

    .line 312
    invoke-static {p1, p0, v2}, Lcom/android/camera/crop/ImageLoader;->loadDownsampledBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method public static loadDownsampledBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sampleSize"    # I

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 239
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 240
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 241
    invoke-static {p0, p1, v0}, Lcom/android/camera/crop/ImageLoader;->loadBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadOrientedBitmapWithBackouts(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "sampleSize"    # I

    .prologue
    .line 375
    invoke-static {p0, p1, p2}, Lcom/android/camera/crop/ImageLoader;->loadBitmapWithBackouts(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 377
    const/4 v2, 0x0

    .line 381
    :goto_0
    return-object v2

    .line 379
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/crop/ImageLoader;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 380
    .local v1, "orientation":I
    invoke-static {v0, v1}, Lcom/android/camera/crop/ImageLoader;->orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 381
    goto :goto_0
.end method

.method public static loadOrientedConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSideLength"    # I
    .param p3, "orientation"    # I
    .param p4, "originalBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 330
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p4, v1}, Lcom/android/camera/crop/ImageLoader;->loadConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, "bmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 332
    invoke-static {v0, p3}, Lcom/android/camera/crop/ImageLoader;->orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    .line 334
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    :cond_0
    return-object v0
.end method

.method public static orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ori"    # I

    .prologue
    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 182
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 183
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 184
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 185
    .local v7, "h":I
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 189
    :cond_0
    move v8, v9

    .line 190
    .local v8, "tmp":I
    move v9, v7

    .line 191
    move v7, v8

    .line 193
    .end local v8    # "tmp":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 221
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 195
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 221
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 221
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 198
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v1, v9

    div-float/2addr v1, v3

    int-to-float v2, v7

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 201
    :pswitch_2
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 204
    :pswitch_3
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 207
    :pswitch_4
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 210
    :pswitch_5
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 211
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 214
    :pswitch_6
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 215
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
