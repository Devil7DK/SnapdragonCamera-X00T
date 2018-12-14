.class Lcom/android/camera/PhotoModule$30;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field final synthetic val$CCTinput:Landroid/widget/EditText;

.field final synthetic val$maxCCT:I

.field final synthetic val$minCCT:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 5526
    iput-object p1, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$30;->val$CCTinput:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/camera/PhotoModule$30;->val$maxCCT:I

    iput p4, p0, Lcom/android/camera/PhotoModule$30;->val$minCCT:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 5529
    const/4 v1, -0x1

    .line 5530
    .local v1, "newCCT":I
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->val$CCTinput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5531
    .local v0, "cct":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 5532
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5534
    :cond_0
    iget v2, p0, Lcom/android/camera/PhotoModule$30;->val$maxCCT:I

    if-gt v1, v2, :cond_1

    iget v2, p0, Lcom/android/camera/PhotoModule$30;->val$minCCT:I

    if-lt v1, v2, :cond_1

    .line 5535
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10600(Lcom/android/camera/PhotoModule;)I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$10602(Lcom/android/camera/PhotoModule;I)I

    .line 5536
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting CCT value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5537
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "manual"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5539
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "manual-wb-type"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5540
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "manual-wb-value"

    invoke-virtual {v2, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5541
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5542
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5547
    :goto_0
    return-void

    .line 5544
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule$30;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const-string v3, "Invalid CCT"

    invoke-static {v2, v3, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 5545
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method
