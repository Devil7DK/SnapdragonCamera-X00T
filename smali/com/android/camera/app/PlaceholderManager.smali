.class public Lcom/android/camera/app/PlaceholderManager;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"

# interfaces
.implements Lcom/android/camera/ImageTaskManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/PlaceholderManager$ListenerIterator;,
        Lcom/android/camera/app/PlaceholderManager$Session;
    }
.end annotation


# static fields
.field public static final PLACEHOLDER_MIME_TYPE:Ljava/lang/String; = "application/placeholder-image"

.field private static final TAG:Ljava/lang/String; = "PlaceholderManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListenerRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ImageTaskManager$TaskListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/app/PlaceholderManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/PlaceholderManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .prologue
    .line 83
    const/4 v1, -0x1

    .line 84
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 86
    .local v2, "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_1

    .line 87
    move v1, v0

    .line 91
    .end local v2    # "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    :cond_0
    return v1

    .line 84
    .restart local v2    # "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getListeners()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/camera/ImageTaskManager$TaskListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/android/camera/app/PlaceholderManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/app/PlaceholderManager$1;-><init>(Lcom/android/camera/app/PlaceholderManager;)V

    return-object v0
.end method


# virtual methods
.method public addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/app/PlaceholderManager;->findTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTaskProgress(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public insertPlaceholder(Ljava/lang/String;[BJ)Lcom/android/camera/app/PlaceholderManager$Session;
    .locals 19
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "placeholder"    # [B
    .param p3, "timestamp"    # J

    .prologue
    .line 134
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 135
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null argument passed to insertPlaceholder"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_1
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    move-object/from16 v0, v17

    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 143
    .local v12, "width":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 145
    .local v13, "height":I
    if-lez v12, :cond_2

    if-gtz v13, :cond_3

    .line 146
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Image had bad height/width"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v14, "application/placeholder-image"

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-object/from16 v11, p2

    invoke-static/range {v4 .. v14}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 153
    .local v18, "uri":Landroid/net/Uri;
    if-nez v18, :cond_4

    .line 154
    const/4 v4, 0x0

    .line 164
    :goto_0
    return-object v4

    .line 157
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 158
    .local v15, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v5

    .line 159
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/app/PlaceholderManager;->getListeners()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 160
    .local v16, "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/camera/ImageTaskManager$TaskListener;->onTaskQueued(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 162
    .end local v16    # "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    new-instance v4, Lcom/android/camera/app/PlaceholderManager$Session;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-wide/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/app/PlaceholderManager$Session;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public removePlaceholder(Lcom/android/camera/app/PlaceholderManager$Session;)V
    .locals 2
    .param p1, "session"    # Lcom/android/camera/app/PlaceholderManager$Session;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 183
    return-void
.end method

.method public removeTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 70
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/app/PlaceholderManager;->findTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)I

    move-result v0

    .line 71
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    :cond_0
    monitor-exit v2

    .line 75
    return-void

    .line 74
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replacePlaceholder(Lcom/android/camera/app/PlaceholderManager$Session;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)V
    .locals 13
    .param p1, "session"    # Lcom/android/camera/app/PlaceholderManager$Session;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "jpeg"    # [B
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v1, p1, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/app/PlaceholderManager$Session;->outputTitle:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/camera/app/PlaceholderManager$Session;->time:J

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/app/PlaceholderManager;->getListeners()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 175
    .local v0, "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    iget-object v3, p1, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-interface {v0, v3, v4}, Lcom/android/camera/ImageTaskManager$TaskListener;->onTaskDone(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 177
    .end local v0    # "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object v1, p0, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 179
    return-void
.end method
