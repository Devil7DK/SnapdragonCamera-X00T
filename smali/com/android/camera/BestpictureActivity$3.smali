.class Lcom/android/camera/BestpictureActivity$3;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 232
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$3;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$3;->this$0:Lcom/android/camera/BestpictureActivity;

    const-string v2, "delete"

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->loadDialogShowConfig(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 237
    .local v0, "showDeleteDialog":Z
    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$3;->this$0:Lcom/android/camera/BestpictureActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/BestpictureActivity;->access$700(Lcom/android/camera/BestpictureActivity;I)V

    .line 239
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$3;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 240
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$3;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$500(Lcom/android/camera/BestpictureActivity;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$3;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$800(Lcom/android/camera/BestpictureActivity;)V

    goto :goto_0
.end method
