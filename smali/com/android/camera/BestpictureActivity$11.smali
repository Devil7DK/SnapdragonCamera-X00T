.class Lcom/android/camera/BestpictureActivity$11;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->dismissProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BestpictureActivity;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$11;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$11;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1900(Lcom/android/camera/BestpictureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$11;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1900(Lcom/android/camera/BestpictureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$11;->this$0:Lcom/android/camera/BestpictureActivity;

    .line 577
    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$2000(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$11;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1900(Lcom/android/camera/BestpictureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 579
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$11;->this$0:Lcom/android/camera/BestpictureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BestpictureActivity;->access$1902(Lcom/android/camera/BestpictureActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 581
    :cond_0
    return-void
.end method
