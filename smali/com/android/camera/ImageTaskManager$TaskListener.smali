.class public interface abstract Lcom/android/camera/ImageTaskManager$TaskListener;
.super Ljava/lang/Object;
.source "ImageTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskListener"
.end annotation


# virtual methods
.method public abstract onTaskDone(Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract onTaskProgress(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public abstract onTaskQueued(Ljava/lang/String;Landroid/net/Uri;)V
.end method
