.class Lcom/android/camera/CaptureUI$DecodeImageForReview;
.super Lcom/android/camera/CaptureUI$DecodeTask;
.source "CaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageForReview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureUI;[BI)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "orientation"    # I

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/android/camera/CaptureUI$DecodeImageForReview;->this$0:Lcom/android/camera/CaptureUI;

    .line 1829
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CaptureUI$DecodeTask;-><init>(Lcom/android/camera/CaptureUI;[BI)V

    .line 1830
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI$DecodeImageForReview;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI$DecodeImageForReview;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1800(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1838
    iget-object v0, p0, Lcom/android/camera/CaptureUI$DecodeImageForReview;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1800(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1839
    iget-object v0, p0, Lcom/android/camera/CaptureUI$DecodeImageForReview;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureUI;->access$3002(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureUI$DecodeImageForReview;)Lcom/android/camera/CaptureUI$DecodeImageForReview;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1827
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureUI$DecodeImageForReview;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
