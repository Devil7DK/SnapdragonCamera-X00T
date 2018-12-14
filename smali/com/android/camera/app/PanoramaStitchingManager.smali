.class public Lcom/android/camera/app/PanoramaStitchingManager;
.super Ljava/lang/Object;
.source "PanoramaStitchingManager.java"

# interfaces
.implements Lcom/android/camera/ImageTaskManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .prologue
    .line 32
    return-void
.end method

.method public getTaskProgress(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 41
    const/4 v0, -0x1

    return v0
.end method

.method public removeTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .prologue
    .line 37
    return-void
.end method
