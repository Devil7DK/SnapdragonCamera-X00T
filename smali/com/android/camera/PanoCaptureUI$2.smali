.class Lcom/android/camera/PanoCaptureUI$2;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureUI;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 167
    sub-int v3, p4, p2

    .line 168
    .local v3, "width":I
    sub-int v0, p5, p3

    .line 169
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v4}, Lcom/android/camera/PanoCaptureUI;->access$200(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/PanoCaptureModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/PanoCaptureModule;->getPictureOutputSize()Landroid/util/Size;

    move-result-object v2

    .line 170
    .local v2, "size":Landroid/util/Size;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v1, v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 171
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v4}, Lcom/android/camera/PanoCaptureUI;->access$300(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ui/PanoCaptureProcessView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v4, p0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v4}, Lcom/android/camera/PanoCaptureUI;->access$300(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ui/PanoCaptureProcessView;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 174
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 175
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 172
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->setPanoPreviewSize(IIII)V

    .line 176
    return-void
.end method
