.class Lcom/android/camera/PhotoModule$35;
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

.field final synthetic val$ISOinput:Landroid/widget/EditText;

.field final synthetic val$maxExpTime:Ljava/lang/String;

.field final synthetic val$maxISO:I

.field final synthetic val$minExpTime:Ljava/lang/String;

.field final synthetic val$minISO:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 5766
    iput-object p1, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$35;->val$ISOinput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/camera/PhotoModule$35;->val$ExpTimeInput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/camera/PhotoModule$35;->val$maxExpTime:Ljava/lang/String;

    iput p5, p0, Lcom/android/camera/PhotoModule$35;->val$maxISO:I

    iput p6, p0, Lcom/android/camera/PhotoModule$35;->val$minISO:I

    iput-object p7, p0, Lcom/android/camera/PhotoModule$35;->val$minExpTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 5769
    const/4 v3, -0x1

    .line 5770
    .local v3, "newISO":I
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->val$ISOinput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5771
    .local v2, "iso":Ljava/lang/String;
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "string iso length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 5773
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5775
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 5776
    .local v4, "newExpTime":D
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->val$ExpTimeInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5777
    .local v1, "expTime":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 5779
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 5786
    :cond_1
    :goto_0
    iget v6, p0, Lcom/android/camera/PhotoModule$35;->val$maxISO:I

    if-gt v3, v6, :cond_2

    iget v6, p0, Lcom/android/camera/PhotoModule$35;->val$minISO:I

    if-lt v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->val$maxExpTime:Ljava/lang/String;

    .line 5787
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->val$minExpTime:Ljava/lang/String;

    .line 5788
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_2

    .line 5789
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$10600(Lcom/android/camera/PhotoModule;)I

    move-result v7

    or-int/lit8 v7, v7, 0x4

    invoke-static {v6, v7}, Lcom/android/camera/PhotoModule;->access$10602(Lcom/android/camera/PhotoModule;I)I

    .line 5790
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting ISO : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5791
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "manual"

    invoke-static {v6, v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5792
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "continuous-iso"

    invoke-virtual {v6, v7, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5793
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting Exposure time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "exposure-time"

    invoke-virtual {v6, v7, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5795
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5796
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v6}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5801
    :goto_1
    return-void

    .line 5780
    :catch_0
    move-exception v0

    .line 5781
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "input newExpTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5782
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->val$maxExpTime:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v4, v6, v8

    goto/16 :goto_0

    .line 5798
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    const-string v7, "Invalid input"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v6

    .line 5799
    invoke-virtual {v6}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_1
.end method
