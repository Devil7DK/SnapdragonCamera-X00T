.class Lcom/android/camera/BestpictureActivity$7;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->initDeleteDialog(I)V
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
    .line 296
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doClickNativeBtAction()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1100(Lcom/android/camera/BestpictureActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    const-string v1, "delete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->saveDialogShowConfig(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 339
    return-void
.end method

.method public doClickOKBtAction()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public doClickPositionBtAction()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1100(Lcom/android/camera/BestpictureActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    const-string v1, "delete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->saveDialogShowConfig(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 329
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$800(Lcom/android/camera/BestpictureActivity;)V

    .line 330
    return-void
.end method

.method public getContentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeButtonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOKButtonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, ""

    return-object v0
.end method

.method public getPositionButtonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$7;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
