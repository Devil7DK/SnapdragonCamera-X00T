.class Lcom/android/camera/CaptureUI$21;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->initSceneModeButton()V
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
    .line 750
    iput-object p1, p0, Lcom/android/camera/CaptureUI$21;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/camera/CaptureUI$21;->this$0:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 754
    iget-object v1, p0, Lcom/android/camera/CaptureUI$21;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 755
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/CaptureUI$21;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const-class v2, Lcom/android/camera/SceneModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_secure_camera"

    iget-object v2, p0, Lcom/android/camera/CaptureUI$21;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Lcom/android/camera/CaptureUI$21;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 758
    return-void
.end method
