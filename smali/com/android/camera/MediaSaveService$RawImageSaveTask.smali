.class Lcom/android/camera/MediaSaveService$RawImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[B

.field private pictureFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->data:[B

    .line 308
    iput-object p3, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->title:Ljava/lang/String;

    .line 309
    iput-object p4, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->pictureFormat:Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->data:[B

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->pictureFormat:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/camera/Storage;->addRawImage(Ljava/lang/String;[BLjava/lang/String;)J

    move-result-wide v0

    .line 320
    .local v0, "length":J
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 301
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6
    .param p1, "l"    # Ljava/lang/Long;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    .line 326
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    iget-object v2, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v2}, Lcom/android/camera/MediaSaveService;->access$000(Lcom/android/camera/MediaSaveService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaveService;->access$002(Lcom/android/camera/MediaSaveService;J)J

    .line 327
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v1}, Lcom/android/camera/MediaSaveService;->access$100(Lcom/android/camera/MediaSaveService;)V

    .line 328
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 315
    return-void
.end method
