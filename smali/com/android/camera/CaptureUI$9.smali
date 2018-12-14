.class Lcom/android/camera/CaptureUI$9;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V
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
    .line 383
    iput-object p1, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 386
    iget-object v2, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isAudioMute()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 387
    .local v0, "isEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CaptureModule;->setMute(ZZ)V

    .line 388
    if-nez v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$1400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 392
    :goto_1
    return-void

    .line 386
    .end local v0    # "isEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    .restart local v0    # "isEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$1400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method
