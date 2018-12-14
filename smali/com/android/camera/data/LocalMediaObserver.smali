.class public Lcom/android/camera/data/LocalMediaObserver;
.super Landroid/database/ContentObserver;
.source "LocalMediaObserver.java"


# instance fields
.field private mActivityPaused:Z

.field private mMediaDataChangedDuringPause:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 27
    iput-boolean v1, p0, Lcom/android/camera/data/LocalMediaObserver;->mActivityPaused:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    .line 32
    return-void
.end method


# virtual methods
.method public isMediaDataChangedDuringPause()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/data/LocalMediaObserver;->mActivityPaused:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    .line 43
    :cond_0
    return-void
.end method

.method public setActivityPaused(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/camera/data/LocalMediaObserver;->mActivityPaused:Z

    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    .line 50
    :cond_0
    return-void
.end method
