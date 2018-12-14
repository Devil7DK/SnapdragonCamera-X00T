.class public abstract Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BitmapLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/camera/data/LocalMediaData;


# direct methods
.method protected constructor <init>(Lcom/android/camera/data/LocalMediaData;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/LocalMediaData;
    .param p2, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 850
    iput-object p2, p0, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->mView:Landroid/widget/ImageView;

    .line 851
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData;

    invoke-virtual {v1}, Lcom/android/camera/data/LocalMediaData;->isUsing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    :goto_0
    return-void

    .line 858
    :cond_0
    if-nez p1, :cond_1

    .line 859
    const-string v1, "CAM_LocalData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed decoding bitmap for file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData;

    iget-object v3, v3, Lcom/android/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 863
    .local v0, "d":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->mView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 864
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 846
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
