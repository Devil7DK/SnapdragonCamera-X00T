.class public Lcom/android/camera/MediaSaveService;
.super Landroid/app/Service;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MediaSaveService$VideoSaveTask;,
        Lcom/android/camera/MediaSaveService$XmpImageSaveTask;,
        Lcom/android/camera/MediaSaveService$ImageSaveTask;,
        Lcom/android/camera/MediaSaveService$RawImageSaveTask;,
        Lcom/android/camera/MediaSaveService$MpoSaveTask;,
        Lcom/android/camera/MediaSaveService$LocalBinder;,
        Lcom/android/camera/MediaSaveService$OnMediaSavedListener;,
        Lcom/android/camera/MediaSaveService$Listener;
    }
.end annotation


# static fields
.field private static final SAVE_TASK_MEMORY_LIMIT:I

.field private static final SAVE_TASK_MEMORY_LIMIT_IN_MB:I

.field private static final TAG:Ljava/lang/String;

.field public static final VIDEO_BASE_URI:Ljava/lang/String; = "content://media/external/video/media"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mListener:Lcom/android/camera/MediaSaveService$Listener;

.field private mMemoryUse:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getSaveTaskMemoryLimitInMb()I

    move-result v0

    sput v0, Lcom/android/camera/MediaSaveService;->SAVE_TASK_MEMORY_LIMIT_IN_MB:I

    .line 64
    sget v0, Lcom/android/camera/MediaSaveService;->SAVE_TASK_MEMORY_LIMIT_IN_MB:I

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/android/camera/MediaSaveService;->SAVE_TASK_MEMORY_LIMIT:I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Lcom/android/camera/MediaSaveService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/camera/MediaSaveService$LocalBinder;-><init>(Lcom/android/camera/MediaSaveService;)V

    iput-object v0, p0, Lcom/android/camera/MediaSaveService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MediaSaveService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/MediaSaveService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MediaSaveService;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/MediaSaveService;->onQueueAvailable()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onQueueAvailable()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method private onQueueFull()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p10, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p11, "resolver"    # Landroid/content/ContentResolver;
    .param p12, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    sget-object v3, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaveService$ImageSaveTask;

    if-nez p5, :cond_2

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p10

    move-object/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/MediaSaveService$ImageSaveTask;-><init>(Lcom/android/camera/MediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Ljava/lang/String;)V

    .line 145
    .local v2, "t":Lcom/android/camera/MediaSaveService$ImageSaveTask;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    move-object/from16 v0, p1

    array-length v3, v0

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->onQueueFull()V

    .line 149
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaveService$ImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 141
    .end local v2    # "t":Lcom/android/camera/MediaSaveService$ImageSaveTask;
    :cond_2
    new-instance v8, Landroid/location/Location;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addImage([BLjava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 15
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p9, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 190
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v13, "jpeg"

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v13}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public addImage([BLjava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p9, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v13, "jpeg"

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v13}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public addMpoImage([B[B[BIILjava/lang/String;JLandroid/location/Location;ILcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 21
    .param p1, "csImage"    # [B
    .param p2, "bayerImg"    # [B
    .param p3, "monoImg"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "date"    # J
    .param p9, "loc"    # Landroid/location/Location;
    .param p10, "orientation"    # I
    .param p11, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p12, "resolver"    # Landroid/content/ContentResolver;
    .param p13, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    sget-object v3, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaveService$MpoSaveTask;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-direct/range {v2 .. v16}, Lcom/android/camera/MediaSaveService$MpoSaveTask;-><init>(Lcom/android/camera/MediaSaveService;[B[B[BIILjava/lang/String;JLandroid/location/Location;ILcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 124
    .local v2, "t":Lcom/android/camera/MediaSaveService$MpoSaveTask;
    if-nez p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p3

    array-length v4, v0

    add-int/2addr v3, v4

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 127
    .local v18, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->onQueueFull()V

    .line 131
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaveService$MpoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 124
    .end local v18    # "size":J
    :cond_2
    move-object/from16 v0, p1

    array-length v3, v0

    goto :goto_1
.end method

.method public addRawImage([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    sget-object v1, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add image when the queue is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/android/camera/MediaSaveService$RawImageSaveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/MediaSaveService$RawImageSaveTask;-><init>(Lcom/android/camera/MediaSaveService;[BLjava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v0, "t":Lcom/android/camera/MediaSaveService$RawImageSaveTask;
    iget-wide v2, p0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    array-length v1, p1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/camera/MediaSaveService;->onQueueFull()V

    .line 163
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaveService$RawImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p6, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 204
    new-instance v1, Lcom/android/camera/MediaSaveService$VideoSaveTask;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/MediaSaveService$VideoSaveTask;-><init>(Lcom/android/camera/MediaSaveService;Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/camera/MediaSaveService$VideoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method public addXmpImage([BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 19
    .param p1, "mainImage"    # [B
    .param p2, "bayer"    # Lorg/codeaurora/snapcam/filter/GImage;
    .param p3, "gDepth"    # Lorg/codeaurora/snapcam/filter/GDepth;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "date"    # J
    .param p7, "loc"    # Landroid/location/Location;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "orientation"    # I
    .param p11, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p12, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p13, "resolver"    # Landroid/content/ContentResolver;
    .param p14, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    sget-object v3, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;

    if-nez p7, :cond_2

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move-object/from16 v16, p12

    move-object/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;-><init>(Lcom/android/camera/MediaSaveService;[BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Ljava/lang/String;)V

    .line 178
    .local v2, "t":Lcom/android/camera/MediaSaveService$XmpImageSaveTask;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    move-object/from16 v0, p1

    array-length v3, v0

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaveService;->onQueueFull()V

    .line 182
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 174
    .end local v2    # "t":Lcom/android/camera/MediaSaveService$XmpImageSaveTask;
    :cond_2
    new-instance v10, Landroid/location/Location;

    move-object/from16 v0, p7

    invoke-direct {v10, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public isQueueFull()Z
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    sget v2, Lcom/android/camera/MediaSaveService;->SAVE_TASK_MEMORY_LIMIT:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MediaSaveService;->mMemoryUse:J

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flag"    # I
    .param p3, "startId"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/android/camera/MediaSaveService$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/camera/MediaSaveService$Listener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    .line 209
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    goto :goto_0
.end method
