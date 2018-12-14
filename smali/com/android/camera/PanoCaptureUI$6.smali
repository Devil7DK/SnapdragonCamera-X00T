.class Lcom/android/camera/PanoCaptureUI$6;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureUI;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureUI;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$6;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    :try_start_0
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v1, "pref_camera2_scenemode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$6;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$400(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->onModuleSelected(I)V

    .line 388
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method
