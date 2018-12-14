.class Lcom/android/camera/PanoCaptureUI$7;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureUI;->showSceneInstructionalDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureUI;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureUI;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureUI;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    iput-object p2, p0, Lcom/android/camera/PanoCaptureUI$7;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 479
    iget-object v4, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v4}, Lcom/android/camera/PanoCaptureUI;->access$400(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    .line 480
    invoke-static {v5}, Lcom/android/camera/PanoCaptureUI;->access$400(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/ComboPreferences;->getGlobalSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 479
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 483
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v4

    const-string v5, "pref_camera2_scenemode_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 484
    .local v1, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref_camera2_scenemode_key_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "instructionalKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PanoCaptureUI$7;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 486
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 487
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v4}, Lcom/android/camera/PanoCaptureUI;->access$700(Lcom/android/camera/PanoCaptureUI;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 491
    iget-object v4, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/PanoCaptureUI;->access$702(Lcom/android/camera/PanoCaptureUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 492
    return-void
.end method
