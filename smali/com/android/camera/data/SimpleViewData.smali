.class public Lcom/android/camera/data/SimpleViewData;
.super Ljava/lang/Object;
.source "SimpleViewData.java"

# interfaces
.implements Lcom/android/camera/data/LocalData;


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_SimpleViewData"


# instance fields
.field private final mDateModified:J

.field private final mDateTaken:J

.field private final mHeight:I

.field private final mView:Landroid/view/View;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dateTaken"    # I
    .param p5, "dateModified"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/data/SimpleViewData;->mView:Landroid/view/View;

    .line 46
    iput p2, p0, Lcom/android/camera/data/SimpleViewData;->mWidth:I

    .line 47
    iput p3, p0, Lcom/android/camera/data/SimpleViewData;->mHeight:I

    .line 48
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/android/camera/data/SimpleViewData;->mDateTaken:J

    .line 49
    int-to-long v0, p5

    iput-wide v0, p0, Lcom/android/camera/data/SimpleViewData;->mDateModified:J

    .line 50
    return-void
.end method


# virtual methods
.method public canSwipeInFullScreen()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Landroid/content/Context;)Z
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getContentId()J
    .locals 2

    .prologue
    .line 194
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/camera/data/SimpleViewData;->mDateModified:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/camera/data/SimpleViewData;->mDateTaken:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/data/SimpleViewData;->mHeight:I

    return v0
.end method

.method public getLatLong()[D
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalDataType()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, ""

    return-object v0
.end method

.method public getSizeInBytes()J
    .locals 2

    .prologue
    .line 189
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "placeHolder"    # Landroid/graphics/drawable/Drawable;
    .param p5, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/data/SimpleViewData;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/data/SimpleViewData;->mWidth:I

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isPhoto()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isPhotoSphere(Landroid/content/Context;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-interface {p2, v0, v0}, Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;->panoramaInfoAvailable(ZZ)V

    .line 142
    return-void
.end method

.method public isUIActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onFullScreen(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    .line 152
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .prologue
    .line 183
    const-string v0, "CAM_SimpleViewData"

    const-string v1, "Unexpected call in rotate90Degrees()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public viewPhotoSphere(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .prologue
    .line 147
    return-void
.end method
