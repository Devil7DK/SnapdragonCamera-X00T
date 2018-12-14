.class Lcom/android/camera/CaptureUI$23;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->showSceneInstructionalDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;

.field final synthetic val$index:I

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;Landroid/widget/CheckBox;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    iput-object p2, p0, Lcom/android/camera/CaptureUI$23;->val$remember:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/android/camera/CaptureUI$23;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 865
    iget-object v3, p0, Lcom/android/camera/CaptureUI$23;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    iget-object v3, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    .line 867
    invoke-static {v4}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/ComboPreferences;->getGlobalSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 866
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 870
    .local v2, "pref":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref_camera2_scenemode_key_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CaptureUI$23;->val$index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "instructionalKey":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 872
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 873
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 875
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "instructionalKey":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$2200(Lcom/android/camera/CaptureUI;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 876
    iget-object v3, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/CaptureUI;->access$2202(Lcom/android/camera/CaptureUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 877
    return-void
.end method
