.class Lcom/android/camera/CaptureUI$DecodeTask;
.super Landroid/os/AsyncTask;
.source "CaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
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
.field private final mData:[B

.field private mOrientation:I

.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureUI;[BI)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "orientation"    # I

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/android/camera/CaptureUI$DecodeTask;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1805
    iput-object p2, p0, Lcom/android/camera/CaptureUI$DecodeTask;->mData:[B

    .line 1806
    iput p3, p0, Lcom/android/camera/CaptureUI$DecodeTask;->mOrientation:I

    .line 1807
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 1811
    iget-object v2, p0, Lcom/android/camera/CaptureUI$DecodeTask;->mData:[B

    iget-object v3, p0, Lcom/android/camera/CaptureUI$DecodeTask;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$2900(Lcom/android/camera/CaptureUI;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->downSample([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1813
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/camera/CaptureUI$DecodeTask;->mOrientation:I

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1814
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1815
    .local v5, "m":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/camera/CaptureUI$DecodeTask;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1816
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1819
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1800
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureUI$DecodeTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1824
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1800
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureUI$DecodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
