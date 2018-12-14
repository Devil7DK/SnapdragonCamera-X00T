.class Lcom/android/camera/PhotoModule$31;
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

.field final synthetic val$Binput:Landroid/widget/EditText;

.field final synthetic val$Ginput:Landroid/widget/EditText;

.field final synthetic val$Rinput:Landroid/widget/EditText;

.field final synthetic val$maxGain:D

.field final synthetic val$minGain:D


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;DD)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 5584
    iput-object p1, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$31;->val$Rinput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/camera/PhotoModule$31;->val$Ginput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/camera/PhotoModule$31;->val$Binput:Landroid/widget/EditText;

    iput-wide p5, p0, Lcom/android/camera/PhotoModule$31;->val$maxGain:D

    iput-wide p7, p0, Lcom/android/camera/PhotoModule$31;->val$minGain:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 5587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->val$Rinput:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5588
    .local v9, "Rgain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->val$Ginput:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5589
    .local v3, "Ggain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->val$Binput:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5590
    .local v2, "Bgain":Ljava/lang/String;
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 5591
    .local v10, "Rgainf":D
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 5592
    .local v6, "Ggainf":D
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 5593
    .local v4, "Bgainf":D
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 5595
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 5596
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 5597
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 5604
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5605
    .local v8, "RGBGain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$maxGain:D

    cmpg-double v13, v10, v14

    if-gtz v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$minGain:D

    cmpl-double v13, v10, v14

    if-ltz v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$maxGain:D

    cmpg-double v13, v6, v14

    if-gtz v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$minGain:D

    cmpl-double v13, v6, v14

    if-ltz v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$maxGain:D

    cmpg-double v13, v4, v14

    if-gtz v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$minGain:D

    cmpl-double v13, v4, v14

    if-ltz v13, :cond_0

    .line 5608
    const-string v13, "CAM_PhotoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting RGB gains : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v14}, Lcom/android/camera/PhotoModule;->access$10600(Lcom/android/camera/PhotoModule;)I

    move-result v14

    or-int/lit8 v14, v14, 0x2

    invoke-static {v13, v14}, Lcom/android/camera/PhotoModule;->access$10602(Lcom/android/camera/PhotoModule;I)I

    .line 5610
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v13}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v13

    const-string v14, "manual"

    invoke-virtual {v13, v14}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5612
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v13}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v13

    const-string v14, "manual-wb-type"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5613
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v13}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v13

    const-string v14, "manual-wb-value"

    invoke-virtual {v13, v14, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5614
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v13}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v13}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5624
    .end local v8    # "RGBGain":Ljava/lang/String;
    :goto_1
    return-void

    .line 5598
    :catch_0
    move-exception v12

    .line 5599
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string v13, "CAM_PhotoModule"

    const-string v14, "Input RGB gain is invalid"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5600
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$maxGain:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v10, v14, v16

    .line 5601
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$maxGain:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v6, v14, v16

    .line 5602
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule$31;->val$maxGain:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v4, v14, v16

    goto/16 :goto_0

    .line 5617
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "RGBGain":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v13}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v13

    const-string v14, "Invalid RGB gains"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v13

    .line 5618
    invoke-virtual {v13}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_1

    .line 5621
    .end local v8    # "RGBGain":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v13}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v13

    const-string v14, "Invalid RGB gains"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v13

    .line 5622
    invoke-virtual {v13}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_1
.end method
