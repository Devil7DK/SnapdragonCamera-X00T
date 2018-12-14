.class Lcom/android/camera/crop/CropActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/crop/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapSize:I

.field mContext:Landroid/content/Context;

.field mOrientation:I

.field mOriginalBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/crop/CropActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/crop/CropActivity;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 241
    invoke-static {p1}, Lcom/android/camera/crop/CropActivity;->access$000(Lcom/android/camera/crop/CropActivity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mBitmapSize:I

    .line 242
    invoke-virtual {p1}, Lcom/android/camera/crop/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    .line 245
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 249
    aget-object v1, p1, v5

    .line 250
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mBitmapSize:I

    iget-object v4, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/crop/ImageLoader;->loadConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .local v0, "bmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/camera/crop/ImageLoader;->getMetadataRotation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    .line 253
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->this$0:Lcom/android/camera/crop/CropActivity;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/camera/crop/CropActivity;->access$100(Lcom/android/camera/crop/CropActivity;Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V

    .line 259
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/crop/CropActivity$LoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
