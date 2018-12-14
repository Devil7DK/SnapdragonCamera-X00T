.class Lcom/android/camera/WideAnglePanoramaUI$DialogHelper$1;
.super Ljava/lang/Object;
.source "WideAnglePanoramaUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->showAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

.field final synthetic val$buttonRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper$1;->this$1:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    iput-object p2, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper$1;->val$buttonRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper$1;->val$buttonRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 583
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper$1;->this$1:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$400(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 584
    return-void
.end method
