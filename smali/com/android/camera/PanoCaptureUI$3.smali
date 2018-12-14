.class Lcom/android/camera/PanoCaptureUI$3;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoCaptureModule;Landroid/view/View;)V
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
    .line 209
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$3;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$3;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$400(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->gotoGallery()V

    .line 214
    :cond_0
    return-void
.end method
