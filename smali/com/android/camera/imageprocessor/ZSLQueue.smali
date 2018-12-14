.class public Lcom/android/camera/imageprocessor/ZSLQueue;
.super Ljava/lang/Object;
.source "ZSLQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    }
.end annotation


# static fields
.field private static final DEBUG_QUEUE:Z

.field private static final TAG:Ljava/lang/String; = "ZSLQueue"


# instance fields
.field private mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

.field private mCircularBufferSize:I

.field private mImageHead:I

.field private mLock:Ljava/lang/Object;

.field private mMetaHead:I

.field private mModule:Lcom/android/camera/CaptureModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 53
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/imageprocessor/ZSLQueue;->DEBUG_QUEUE:Z

    .line 51
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 2
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mLock:Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCircularBufferSize()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mCircularBufferSize:I

    .line 58
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mCircularBufferSize:I

    new-array v0, v0, [Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    .line 62
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mModule:Lcom/android/camera/CaptureModule;

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkImageRequirement(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 211
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 212
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 214
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 215
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 216
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 218
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 219
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 220
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v2

    .line 236
    :goto_0
    return v0

    .line 224
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 225
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 226
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 227
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 232
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v2

    .line 233
    goto :goto_0

    :cond_5
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method private findImage(JI)I
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "index"    # I

    .prologue
    .line 79
    move v0, p3

    .line 81
    .local v0, "startIndex":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, p3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, p3

    .line 82
    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    move v1, p3

    .line 87
    :goto_0
    return v1

    .line 85
    :cond_1
    add-int/lit8 v1, p3, 0x1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v2, v2

    rem-int p3, v1, v2

    .line 86
    if-ne p3, v0, :cond_0

    .line 87
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private findMeta(JI)I
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "index"    # I

    .prologue
    .line 67
    move v0, p3

    .line 69
    .local v0, "startIndex":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, p3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, p3

    .line 70
    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    move v1, p3

    .line 75
    :goto_0
    return v1

    .line 73
    :cond_1
    add-int/lit8 v1, p3, 0x1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v2, v2

    rem-int p3, v1, v2

    .line 74
    if-ne p3, v0, :cond_0

    .line 75
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 10
    .param p1, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 130
    const/4 v2, -0x1

    .line 131
    .local v2, "lastIndex":I
    iget-object v6, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    if-nez v3, :cond_1

    .line 133
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-wide/16 v4, -0x1

    .line 136
    .local v4, "timestamp":J
    :try_start_1
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 141
    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    .line 142
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 173
    .end local v4    # "timestamp":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 137
    .restart local v4    # "timestamp":J
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    monitor-exit v6

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    if-nez v3, :cond_4

    .line 145
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    new-instance v8, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    invoke-direct {v8}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;-><init>()V

    aput-object v8, v3, v7

    .line 149
    :goto_1
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 150
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-nez v3, :cond_5

    .line 151
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3, p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 152
    iget v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    .line 153
    iget v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v7, v7

    rem-int/2addr v3, v7

    iput v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    .line 173
    :cond_3
    :goto_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    sget-boolean v3, Lcom/android/camera/imageprocessor/ZSLQueue;->DEBUG_QUEUE:Z

    if-eqz v3, :cond_0

    const-string v3, "ZSLQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Meta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->closeMeta()V

    goto :goto_1

    .line 154
    :cond_5
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gtz v3, :cond_3

    .line 157
    iget v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    invoke-direct {p0, v4, v5, v3}, Lcom/android/camera/imageprocessor/ZSLQueue;->findImage(JI)I

    move-result v1

    .line 158
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 159
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 160
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3, p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 161
    iget v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v7, v7

    rem-int/2addr v3, v7

    iput v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    goto :goto_2

    .line 163
    :cond_6
    iput v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    move v2, v1

    .line 164
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3, p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 165
    iget v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v7, v7

    rem-int/2addr v3, v7

    iput v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    goto/16 :goto_2

    .line 169
    .end local v1    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    aget-object v3, v3, v7

    invoke-virtual {v3, p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 170
    iget v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    .line 171
    iget v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v7, v7

    rem-int/2addr v3, v7

    iput v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public add(Landroid/media/Image;Landroid/media/Image;)V
    .locals 8
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "rawImage"    # Landroid/media/Image;

    .prologue
    .line 91
    const/4 v1, -0x1

    .line 92
    .local v1, "lastIndex":I
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    if-nez v2, :cond_1

    .line 94
    monitor-exit v3

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->closeImage()V

    .line 100
    :goto_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 101
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 103
    iget v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    .line 104
    iget v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v4, v4

    rem-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    .line 124
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    sget-boolean v2, Lcom/android/camera/imageprocessor/ZSLQueue;->DEBUG_QUEUE:Z

    if-eqz v2, :cond_0

    const-string v2, "ZSLQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    new-instance v5, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    invoke-direct {v5}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;-><init>()V

    aput-object v5, v2, v4

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 105
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 106
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    iget v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    invoke-direct {p0, v4, v5, v2}, Lcom/android/camera/imageprocessor/ZSLQueue;->findMeta(JI)I

    move-result v0

    .line 109
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 110
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 111
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 112
    iget v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v4, v4

    rem-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    goto/16 :goto_2

    .line 114
    :cond_5
    iput v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    move v1, v0

    .line 115
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 116
    iget v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v4, v4

    rem-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    goto/16 :goto_2

    .line 120
    .end local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 121
    iget v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    .line 122
    iget v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v4, v4

    rem-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public onClose()V
    .locals 4

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->closeImage()V

    .line 200
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->closeMeta()V

    .line 201
    iget-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    .line 205
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    .line 206
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mMetaHead:I

    .line 207
    monitor-exit v2

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tryToGetMatchingItem()Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v3, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    :try_start_0
    iget v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    .line 183
    .local v0, "index":I
    :cond_0
    iget-object v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    aget-object v1, v4, v0

    .line 184
    .local v1, "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera/imageprocessor/ZSLQueue;->checkImageRequirement(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 186
    monitor-exit v3

    .line 192
    .end local v1    # "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :goto_0
    return-object v1

    .line 188
    .restart local v1    # "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 189
    if-gez v0, :cond_2

    iget-object v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mBuffer:[Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    .line 190
    :cond_2
    iget v4, p0, Lcom/android/camera/imageprocessor/ZSLQueue;->mImageHead:I

    if-ne v0, v4, :cond_0

    .line 191
    monitor-exit v3

    move-object v1, v2

    .line 192
    goto :goto_0

    .line 191
    .end local v0    # "index":I
    .end local v1    # "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
