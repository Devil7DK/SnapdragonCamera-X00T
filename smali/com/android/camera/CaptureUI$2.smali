.class Lcom/android/camera/CaptureUI$2;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 147
    const-string v0, "SnapCam_CaptureUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 152
    const-string v0, "SnapCam_CaptureUI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureUI;->access$202(Lcom/android/camera/CaptureUI;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 154
    iget-object v0, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$300(Lcom/android/camera/CaptureUI;)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/TrackingFocusRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/TrackingFocusRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/TrackingFocusRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/AutoFitSurfaceView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v4}, Lcom/android/camera/CaptureUI;->access$500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/AutoFitSurfaceView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/TrackingFocusRenderer;->setSurfaceDim(IIII)V

    .line 158
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 162
    const-string v0, "SnapCam_CaptureUI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureUI;->access$202(Lcom/android/camera/CaptureUI;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 164
    iget-object v0, p0, Lcom/android/camera/CaptureUI$2;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$600(Lcom/android/camera/CaptureUI;)V

    .line 165
    return-void
.end method
