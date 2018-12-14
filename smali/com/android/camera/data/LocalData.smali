.class public interface abstract Lcom/android/camera/data/LocalData;
.super Ljava/lang/Object;
.source "LocalData.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$ImageData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalData$NewestFirstComparator;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_PLAY:I = 0x1

.field public static final LOCAL_360_PHOTO_SPHERE:I = 0x6

.field public static final LOCAL_CAMERA_PREVIEW:I = 0x1

.field public static final LOCAL_IMAGE:I = 0x3

.field public static final LOCAL_IN_PROGRESS_DATA:I = 0x7

.field public static final LOCAL_PHOTO_SPHERE:I = 0x5

.field public static final LOCAL_VIDEO:I = 0x4

.field public static final LOCAL_VIEW:I = 0x2

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final TAG:Ljava/lang/String; = "CAM_LocalData"


# virtual methods
.method public abstract canSwipeInFullScreen()Z
.end method

.method public abstract delete(Landroid/content/Context;)Z
.end method

.method public abstract getContentId()J
.end method

.method public abstract getDateModified()J
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getLocalDataType()I
.end method

.method public abstract getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getSizeInBytes()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;
.end method

.method public abstract isDataActionSupported(I)Z
.end method

.method public abstract onFullScreen(Z)V
.end method

.method public abstract refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;
.end method

.method public abstract rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z
.end method
