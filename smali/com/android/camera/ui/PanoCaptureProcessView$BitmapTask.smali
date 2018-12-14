.class Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapTask"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field dir:I

.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;III)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p2, "orgBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "dir"    # I

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    invoke-static {p1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_1

    .line 561
    :cond_0
    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureWidth:I

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 565
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1300()F

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1400(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 566
    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->bitmap:Landroid/graphics/Bitmap;

    .line 567
    iput p3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->x:I

    .line 568
    iput p4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->y:I

    .line 569
    iput p5, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->dir:I

    .line 570
    return-void

    .line 563
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureHeight:I

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureWidth:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    return-void
.end method
