.class Lcom/android/camera/PanoCaptureUI$4;
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
    .line 221
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$4;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$4;->this$0:Lcom/android/camera/PanoCaptureUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/PanoCaptureUI;->access$502(Lcom/android/camera/PanoCaptureUI;Z)Z

    .line 225
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$4;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$600(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 226
    return-void
.end method
