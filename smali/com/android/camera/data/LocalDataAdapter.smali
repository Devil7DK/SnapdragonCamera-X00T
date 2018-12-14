.class public interface abstract Lcom/android/camera/data/LocalDataAdapter;
.super Ljava/lang/Object;
.source "LocalDataAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$DataAdapter;


# virtual methods
.method public abstract addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end method

.method public abstract addNewVideo(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end method

.method public abstract executeDeletion(Landroid/content/Context;)Z
.end method

.method public abstract findDataByContentUri(Landroid/net/Uri;)I
.end method

.method public abstract flush()V
.end method

.method public abstract getLocalData(I)Lcom/android/camera/data/LocalData;
.end method

.method public abstract insertData(Lcom/android/camera/data/LocalData;)V
.end method

.method public abstract refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end method

.method public abstract removeData(Landroid/content/Context;I)V
.end method

.method public abstract requestLoad(Landroid/content/ContentResolver;)V
.end method

.method public abstract undoDataRemoval()Z
.end method

.method public abstract updateData(ILcom/android/camera/data/LocalData;)V
.end method
