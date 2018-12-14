.class Lcom/android/camera/data/CameraDataAdapter$QueryTask;
.super Landroid/os/AsyncTask;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/LocalDataList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/CameraDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/data/CameraDataAdapter;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/data/CameraDataAdapter;Lcom/android/camera/data/CameraDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/data/CameraDataAdapter;
    .param p2, "x1"    # Lcom/android/camera/data/CameraDataAdapter$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;-><init>(Lcom/android/camera/data/CameraDataAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalDataList;
    .locals 11
    .param p1, "resolver"    # [Landroid/content/ContentResolver;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 291
    new-instance v8, Lcom/android/camera/data/LocalDataList;

    invoke-direct {v8}, Lcom/android/camera/data/LocalDataList;-><init>()V

    .line 293
    .local v8, "l":Lcom/android/camera/data/LocalDataList;
    aget-object v0, p1, v9

    sget-object v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data like ? or _data like ? "

    .line 297
    invoke-static {}, Lcom/android/camera/data/CameraDataAdapter;->access$100()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "datetaken DESC, _id DESC"

    .line 293
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 299
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    invoke-static {v6}, Lcom/android/camera/data/LocalMediaData$PhotoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$PhotoData;

    move-result-object v7

    .line 303
    .local v7, "data":Lcom/android/camera/data/LocalData;
    if-eqz v7, :cond_3

    .line 304
    invoke-interface {v7}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/placeholder-image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Lcom/android/camera/data/InProgressDataWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, v7, v1}, Lcom/android/camera/data/InProgressDataWrapper;-><init>(Lcom/android/camera/data/LocalData;Z)V

    invoke-virtual {v8, v0}, Lcom/android/camera/data/LocalDataList;->add(Lcom/android/camera/data/LocalData;)V

    .line 313
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    .end local v7    # "data":Lcom/android/camera/data/LocalData;
    :cond_0
    if-eqz v6, :cond_1

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1
    aget-object v0, p1, v9

    sget-object v1, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data like ? or _data like ? "

    .line 327
    invoke-static {}, Lcom/android/camera/data/CameraDataAdapter;->access$100()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "datetaken DESC, _id DESC"

    .line 323
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 333
    :goto_2
    invoke-static {v6}, Lcom/android/camera/data/LocalMediaData$VideoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$VideoData;

    move-result-object v7

    .line 334
    .restart local v7    # "data":Lcom/android/camera/data/LocalData;
    if-eqz v7, :cond_5

    .line 335
    invoke-virtual {v8, v7}, Lcom/android/camera/data/LocalDataList;->add(Lcom/android/camera/data/LocalData;)V

    .line 340
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 307
    :cond_2
    invoke-virtual {v8, v7}, Lcom/android/camera/data/LocalDataList;->add(Lcom/android/camera/data/LocalData;)V

    goto :goto_1

    .line 310
    :cond_3
    const-string v0, "CAM_CameraDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 337
    :cond_5
    const-string v0, "CAM_CameraDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 347
    .end local v7    # "data":Lcom/android/camera/data/LocalData;
    :cond_6
    if-eqz v6, :cond_7

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_7
    invoke-virtual {v8}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 352
    new-instance v0, Lcom/android/camera/data/LocalData$NewestFirstComparator;

    invoke-direct {v0}, Lcom/android/camera/data/LocalData$NewestFirstComparator;-><init>()V

    invoke-virtual {v8, v0}, Lcom/android/camera/data/LocalDataList;->sort(Ljava/util/Comparator;)V

    .line 355
    :cond_8
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    check-cast p1, [Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->doInBackground([Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalDataList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/data/LocalDataList;)V
    .locals 1
    .param p1, "l"    # Lcom/android/camera/data/LocalDataList;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraDataAdapter;

    invoke-static {v0, p1}, Lcom/android/camera/data/CameraDataAdapter;->access$200(Lcom/android/camera/data/CameraDataAdapter;Lcom/android/camera/data/LocalDataList;)V

    .line 361
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 280
    check-cast p1, Lcom/android/camera/data/LocalDataList;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->onPostExecute(Lcom/android/camera/data/LocalDataList;)V

    return-void
.end method
