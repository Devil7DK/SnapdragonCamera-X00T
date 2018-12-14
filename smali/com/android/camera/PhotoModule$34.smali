.class Lcom/android/camera/PhotoModule$34;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field final synthetic val$ExpTimeInput:Landroid/widget/EditText;

.field final synthetic val$maxExpTime:Ljava/lang/String;

.field final synthetic val$minExpTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 5721
    iput-object p1, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$34;->val$ExpTimeInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/camera/PhotoModule$34;->val$maxExpTime:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/PhotoModule$34;->val$minExpTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x0

    .line 5724
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 5725
    .local v2, "newExpTime":D
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->val$ExpTimeInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5726
    .local v1, "expTime":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 5728
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 5734
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->val$maxExpTime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->val$minExpTime:Ljava/lang/String;

    .line 5735
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    .line 5736
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Exposure time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5737
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v5, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    or-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Lcom/android/camera/PhotoModule;->access$10602(Lcom/android/camera/PhotoModule;I)I

    .line 5738
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "exposure-time"

    invoke-virtual {v4, v5, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    sget-object v5, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ISO_AUTO:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5740
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v4

    const-string v5, "pref_camera_iso_key"

    sget-object v6, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ISO_AUTO:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5741
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "pref_camera_iso_key"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5742
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5743
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5748
    :goto_1
    return-void

    .line 5729
    :catch_0
    move-exception v0

    .line 5730
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input expTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->val$maxExpTime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v2, v4, v6

    goto/16 :goto_0

    .line 5745
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const-string v5, "Invalid exposure time"

    invoke-static {v4, v5, v8}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v4

    .line 5746
    invoke-virtual {v4}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_1
.end method
