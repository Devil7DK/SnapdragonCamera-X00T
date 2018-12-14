.class Lcom/android/camera/VideoUI$3;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-object v1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1200(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v1

    check-cast v1, Lcom/android/camera/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/VideoModule;->isAudioMute()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 270
    .local v0, "isEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1200(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v1

    check-cast v1, Lcom/android/camera/VideoModule;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 271
    if-nez v0, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1300(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 275
    :goto_1
    return-void

    .line 269
    .end local v0    # "isEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    .restart local v0    # "isEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1300(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method
