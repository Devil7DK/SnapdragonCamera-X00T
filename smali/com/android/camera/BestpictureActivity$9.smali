.class Lcom/android/camera/BestpictureActivity$9;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->initSaveDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;

.field final synthetic val$choosenCount:I


# direct methods
.method constructor <init>(Lcom/android/camera/BestpictureActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BestpictureActivity;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    iput p2, p0, Lcom/android/camera/BestpictureActivity$9;->val$choosenCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doClickNativeBtAction()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1100(Lcom/android/camera/BestpictureActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    const-string v1, "save"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->saveDialogShowConfig(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 449
    return-void
.end method

.method public doClickOKBtAction()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 454
    return-void
.end method

.method public doClickPositionBtAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1100(Lcom/android/camera/BestpictureActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    const-string v1, "save"

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->saveDialogShowConfig(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 439
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    iget v1, p0, Lcom/android/camera/BestpictureActivity$9;->val$choosenCount:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/BestpictureActivity;->access$600(Lcom/android/camera/BestpictureActivity;IZ)V

    .line 440
    return-void
.end method

.method public getContentString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0438

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/BestpictureActivity$9;->val$choosenCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeButtonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOKButtonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    const-string v0, ""

    return-object v0
.end method

.method public getPositionButtonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$9;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
