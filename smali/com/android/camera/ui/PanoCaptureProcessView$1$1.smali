.class Lcom/android/camera/ui/PanoCaptureProcessView$1$1;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/PanoCaptureProcessView$1;

.field final synthetic val$thumbBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView$1;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/PanoCaptureProcessView$1;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;->this$1:Lcom/android/camera/ui/PanoCaptureProcessView$1;

    iput-object p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;->val$thumbBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;->this$1:Lcom/android/camera/ui/PanoCaptureProcessView$1;

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;->val$thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 639
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;->this$1:Lcom/android/camera/ui/PanoCaptureProcessView$1;

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 640
    return-void
.end method
