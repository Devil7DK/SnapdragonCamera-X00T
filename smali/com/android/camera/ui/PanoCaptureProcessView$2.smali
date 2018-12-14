.class Lcom/android/camera/ui/PanoCaptureProcessView$2;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_1

    .line 676
    :cond_0
    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    .line 677
    .local v1, "width":I
    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    .line 682
    .local v2, "height":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2600(Lcom/android/camera/ui/PanoCaptureProcessView;IIIII)I

    move-result v0

    if-gez v0, :cond_2

    .line 683
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to create panorama native instance"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v0, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 685
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$502(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 689
    :goto_1
    return-void

    .line 679
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_1
    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    .line 680
    .restart local v1    # "width":I
    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    .restart local v2    # "height":I
    goto :goto_0

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v0, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    goto :goto_1
.end method
