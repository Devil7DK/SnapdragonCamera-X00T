.class public Lcom/android/camera/data/PanoramaMetadataLoader;
.super Ljava/lang/Object;
.source "PanoramaMetadataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;
    }
.end annotation


# instance fields
.field private mCallbacksWaiting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaUri:Landroid/net/Uri;

.field private mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mMediaUri:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/data/PanoramaMetadataLoader;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/PanoramaMetadataLoader;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mMediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/data/PanoramaMetadataLoader;Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/data/PanoramaMetadataLoader;
    .param p1, "x1"    # Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/data/PanoramaMetadataLoader;->onLoadingDone(Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;)V

    return-void
.end method

.method private declared-synchronized onLoadingDone(Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    .line 97
    iget-object v1, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-nez v1, :cond_0

    .line 99
    sget-object v1, Lcom/android/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    iput-object v1, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;

    .line 102
    .local v0, "cb":Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;
    iget-object v2, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    invoke-interface {v0, v2}, Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;->onPanoramaMetadataLoaded(Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "cb":Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 104
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mCallbacksWaiting:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized clearCachedValues()V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPanoramaMetadata(Landroid/content/Context;Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    invoke-interface {p2, v0}, Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;->onPanoramaMetadataLoaded(Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mCallbacksWaiting:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mCallbacksWaiting:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/android/camera/data/PanoramaMetadataLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/data/PanoramaMetadataLoader$1;-><init>(Lcom/android/camera/data/PanoramaMetadataLoader;Landroid/content/Context;)V

    .line 78
    invoke-virtual {v0}, Lcom/android/camera/data/PanoramaMetadataLoader$1;->start()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
