.class Lcom/android/camera/PhotoModule$28;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$maxFocusPos:D

.field final synthetic val$minFocusPos:D


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;DD)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 5439
    iput-object p1, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$28;->val$input:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/android/camera/PhotoModule$28;->val$maxFocusPos:D

    iput-wide p5, p0, Lcom/android/camera/PhotoModule$28;->val$minFocusPos:D

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

    .line 5442
    const-wide/16 v2, 0x0

    .line 5443
    .local v2, "focuspos":D
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5444
    .local v1, "focusStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 5446
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 5457
    :goto_0
    iget-wide v4, p0, Lcom/android/camera/PhotoModule$28;->val$minFocusPos:D

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/android/camera/PhotoModule$28;->val$maxFocusPos:D

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    .line 5458
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting focus position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v5, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/camera/PhotoModule;->access$10602(Lcom/android/camera/PhotoModule;I)I

    .line 5460
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    sget-object v5, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FOCUS_MODE_MANUAL_POSITION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5462
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "manual-focus-pos-type"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5463
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "manual-focus-position"

    invoke-virtual {v4, v5, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5464
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5465
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5470
    :goto_1
    return-void

    .line 5447
    :catch_0
    move-exception v0

    .line 5448
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input foucspos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    iget-wide v4, p0, Lcom/android/camera/PhotoModule$28;->val$maxFocusPos:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v2, v4, v6

    .line 5450
    goto/16 :goto_0

    .line 5453
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const-string v5, "Invalid focus position"

    invoke-static {v4, v5, v8}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v4

    .line 5454
    invoke-virtual {v4}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_1

    .line 5467
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule$28;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const-string v5, "Invalid focus position"

    invoke-static {v4, v5, v8}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v4

    .line 5468
    invoke-virtual {v4}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_1
.end method
