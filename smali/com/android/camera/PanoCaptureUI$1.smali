.class Lcom/android/camera/PanoCaptureUI$1;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureUI;->onPanoStatusChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureUI;

.field final synthetic val$isStarting:Z


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureUI;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureUI;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    iput-boolean p2, p0, Lcom/android/camera/PanoCaptureUI$1;->val$isStarting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureUI$1;->val$isStarting:Z

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$000(Lcom/android/camera/PanoCaptureUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$000(Lcom/android/camera/PanoCaptureUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$100(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$100(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$000(Lcom/android/camera/PanoCaptureUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$000(Lcom/android/camera/PanoCaptureUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$100(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$1;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$100(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    goto :goto_0
.end method
