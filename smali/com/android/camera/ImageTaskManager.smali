.class public interface abstract Lcom/android/camera/ImageTaskManager;
.super Ljava/lang/Object;
.source "ImageTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageTaskManager$TaskListener;
    }
.end annotation


# virtual methods
.method public abstract addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
.end method

.method public abstract getTaskProgress(Landroid/net/Uri;)I
.end method

.method public abstract removeTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
.end method
