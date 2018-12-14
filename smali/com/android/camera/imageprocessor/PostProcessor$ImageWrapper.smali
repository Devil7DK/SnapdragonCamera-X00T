.class Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageWrapper"
.end annotation


# instance fields
.field mImage:Landroid/media/Image;

.field mIsTaken:Z

.field mRawImage:Landroid/media/Image;

.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V
    .locals 1
    .param p2, "image"    # Landroid/media/Image;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mImage:Landroid/media/Image;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mRawImage:Landroid/media/Image;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mIsTaken:Z

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;Landroid/media/Image;)V
    .locals 1
    .param p2, "image"    # Landroid/media/Image;
    .param p3, "rawImage"    # Landroid/media/Image;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mImage:Landroid/media/Image;

    .line 183
    iput-object p3, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mRawImage:Landroid/media/Image;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mIsTaken:Z

    .line 185
    return-void
.end method


# virtual methods
.method public getImage()Landroid/media/Image;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mIsTaken:Z

    .line 193
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public getRawImage()Landroid/media/Image;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mRawImage:Landroid/media/Image;

    return-object v0
.end method

.method public isTaken()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->mIsTaken:Z

    return v0
.end method
