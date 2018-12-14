.class Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;
.super Ljava/lang/Object;
.source "WideAnglePanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WideAnglePanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaUI;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    return-void
.end method


# virtual methods
.method public dismissAll()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 567
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$400(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$400(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$500(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$500(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 573
    :cond_1
    return-void
.end method

.method public showAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "buttonMessage"    # Ljava/lang/CharSequence;
    .param p4, "buttonRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->dismissAll()V

    .line 579
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$600(Lcom/android/camera/WideAnglePanoramaUI;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper$1;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper$1;-><init>(Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$400(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 587
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->dismissAll()V

    .line 591
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$500(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 592
    return-void
.end method
