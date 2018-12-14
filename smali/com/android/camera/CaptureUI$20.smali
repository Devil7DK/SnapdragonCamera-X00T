.class Lcom/android/camera/CaptureUI$20;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->initSwitchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 724
    iget-object v3, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 726
    iget-object v3, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    const-string v4, "pref_camera2_id_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 736
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    const-string v4, "pref_camera2_id_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 731
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    const-string v4, "pref_camera2_id_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 733
    .local v0, "entries":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    rem-int v1, v3, v4

    .line 734
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 735
    iget-object v3, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    const-string v4, "pref_camera2_id_key"

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V

    goto :goto_0
.end method
