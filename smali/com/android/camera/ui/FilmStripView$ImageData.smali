.class public interface abstract Lcom/android/camera/ui/FilmStripView$ImageData;
.super Ljava/lang/Object;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;
    }
.end annotation


# static fields
.field public static final ACTION_DEMOTE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_PROMOTE:I = 0x1

.field public static final ACTION_ZOOM:I = 0x4

.field public static final SIZE_FULL:I = -0x2

.field public static final VIEW_TYPE_NONE:I = 0x0

.field public static final VIEW_TYPE_REMOVABLE:I = 0x2

.field public static final VIEW_TYPE_STICKY:I = 0x1


# virtual methods
.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLatLong()[D
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getViewType()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract isPhoto()Z
.end method

.method public abstract isPhotoSphere(Landroid/content/Context;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V
.end method

.method public abstract isUIActionSupported(I)Z
.end method

.method public abstract prepare()V
.end method

.method public abstract recycle()V
.end method

.method public abstract viewPhotoSphere(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V
.end method
