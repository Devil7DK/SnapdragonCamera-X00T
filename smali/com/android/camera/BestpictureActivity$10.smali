.class Lcom/android/camera/BestpictureActivity$10;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->showProgressDialog()V
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
    .line 565
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$10;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$10;->this$0:Lcom/android/camera/BestpictureActivity;

    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$10;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$2000(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity;

    move-result-object v1

    const-string v2, ""

    const-string v3, "Processing..."

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/BestpictureActivity;->access$1902(Lcom/android/camera/BestpictureActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 568
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$10;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1900(Lcom/android/camera/BestpictureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 569
    return-void
.end method
