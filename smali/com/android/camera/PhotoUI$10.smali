.class Lcom/android/camera/PhotoUI$10;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoUI;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/camera/PhotoUI$10;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 972
    iget-object v0, p0, Lcom/android/camera/PhotoUI$10;->this$0:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoUI;->access$1802(Lcom/android/camera/PhotoUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 974
    iget-object v0, p0, Lcom/android/camera/PhotoUI$10;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoUI;->access$1902(Lcom/android/camera/PhotoUI;Z)Z

    .line 975
    iget-object v0, p0, Lcom/android/camera/PhotoUI$10;->this$0:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showUI()V

    .line 979
    iget-object v0, p0, Lcom/android/camera/PhotoUI$10;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$1400(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 980
    return-void
.end method
