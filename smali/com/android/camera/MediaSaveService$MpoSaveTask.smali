.class Lcom/android/camera/MediaSaveService$MpoSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoSaveTask"
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
.field private bayerImage:[B

.field private csImage:[B

.field private date:J

.field private height:I

.field private listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private monoImage:[B

.field private orientation:I

.field private pictureFormat:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;[B[B[BIILjava/lang/String;JLandroid/location/Location;ILcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .param p2, "csImage"    # [B
    .param p3, "bayerImg"    # [B
    .param p4, "monoImg"    # [B
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "date"    # J
    .param p10, "loc"    # Landroid/location/Location;
    .param p11, "orientation"    # I
    .param p12, "listener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p13, "resolver"    # Landroid/content/ContentResolver;
    .param p14, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->csImage:[B

    .line 239
    iput-object p3, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->bayerImage:[B

    .line 240
    iput-object p4, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->monoImage:[B

    .line 241
    iput-object p7, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->title:Ljava/lang/String;

    .line 242
    iput-wide p8, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->date:J

    .line 243
    iput-object p10, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->loc:Landroid/location/Location;

    .line 244
    iput p5, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->width:I

    .line 245
    iput p6, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->height:I

    .line 246
    iput p11, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->orientation:I

    .line 247
    iput-object p13, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 248
    iput-object p12, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 249
    iput-object p14, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->pictureFormat:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 18
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 255
    new-instance v17, Lcom/android/camera/mpo/MpoData;

    invoke-direct/range {v17 .. v17}, Lcom/android/camera/mpo/MpoData;-><init>()V

    .line 256
    .local v17, "mpo":Lcom/android/camera/mpo/MpoData;
    new-instance v13, Lcom/android/camera/mpo/MpoImageData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->bayerImage:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v13, v2, v3}, Lcom/android/camera/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    .line 259
    .local v13, "bayer":Lcom/android/camera/mpo/MpoImageData;
    new-instance v16, Lcom/android/camera/mpo/MpoImageData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->monoImage:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/android/camera/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    .line 262
    .local v16, "mono":Lcom/android/camera/mpo/MpoImageData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->csImage:[B

    if-nez v2, :cond_1

    .line 263
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V

    .line 264
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/camera/mpo/MpoData;->setPrimaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V

    .line 275
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->pictureFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, "path":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/android/camera/mpo/MpoInterface;->writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/lang/String;)I

    move-result v8

    .line 278
    .local v8, "size":I
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v8, v2

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->resolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->orientation:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->height:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->pictureFormat:Ljava/lang/String;

    invoke-static/range {v2 .. v12}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 266
    .end local v8    # "size":I
    .end local v9    # "path":Ljava/lang/String;
    .end local v15    # "f":Ljava/io/File;
    :cond_1
    new-instance v14, Lcom/android/camera/mpo/MpoImageData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->csImage:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v14, v2, v3}, Lcom/android/camera/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    .line 269
    .local v14, "cs":Lcom/android/camera/mpo/MpoImageData;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/camera/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V

    .line 270
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V

    .line 271
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/camera/mpo/MpoData;->setPrimaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$MpoSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    .line 291
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->csImage:[B

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->bayerImage:[B

    array-length v4, v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->monoImage:[B

    array-length v4, v4

    add-int/2addr v1, v4

    int-to-long v2, v1

    .line 295
    .local v2, "size":J
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v4}, Lcom/android/camera/MediaSaveService;->access$000(Lcom/android/camera/MediaSaveService;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v1, v4, v5}, Lcom/android/camera/MediaSaveService;->access$002(Lcom/android/camera/MediaSaveService;J)J

    .line 296
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v1}, Lcom/android/camera/MediaSaveService;->access$100(Lcom/android/camera/MediaSaveService;)V

    .line 298
    :cond_1
    return-void

    .line 291
    .end local v2    # "size":J
    :cond_2
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$MpoSaveTask;->csImage:[B

    array-length v1, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 221
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$MpoSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
