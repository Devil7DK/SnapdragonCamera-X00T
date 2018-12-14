.class Lcom/android/camera/BestpictureActivity$6;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->initOverFlow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;

.field final synthetic val$pop:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/android/camera/BestpictureActivity;Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BestpictureActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$6;->this$0:Lcom/android/camera/BestpictureActivity;

    iput-object p2, p0, Lcom/android/camera/BestpictureActivity$6;->val$pop:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$6;->val$pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 280
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$6;->this$0:Lcom/android/camera/BestpictureActivity;

    const-string v2, "delete_all"

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->loadDialogShowConfig(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 282
    .local v0, "showDeleteAllDialog":Z
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$6;->this$0:Lcom/android/camera/BestpictureActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/BestpictureActivity;->access$1000(Lcom/android/camera/BestpictureActivity;I)V

    .line 284
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$6;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 285
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$6;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$500(Lcom/android/camera/BestpictureActivity;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$6;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$800(Lcom/android/camera/BestpictureActivity;)V

    goto :goto_0
.end method
