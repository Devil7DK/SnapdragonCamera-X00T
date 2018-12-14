.class Lcom/android/camera/CaptureUI$27;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->getMonoDummySurface()Landroid/view/Surface;
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
    .line 1341
    iput-object p1, p0, Lcom/android/camera/CaptureUI$27;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/camera/CaptureUI$27;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$000(Lcom/android/camera/CaptureUI;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureUI$27;->this$0:Lcom/android/camera/CaptureUI;

    iget v1, v1, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    iget-object v2, p0, Lcom/android/camera/CaptureUI$27;->this$0:Lcom/android/camera/CaptureUI;

    iget v2, v2, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1344
    iget-object v0, p0, Lcom/android/camera/CaptureUI$27;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 1345
    return-void
.end method
