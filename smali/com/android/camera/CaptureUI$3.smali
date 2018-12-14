.class Lcom/android/camera/CaptureUI$3;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V
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
    .line 267
    iput-object p1, p0, Lcom/android/camera/CaptureUI$3;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 272
    sub-int v1, p4, p2

    .line 273
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 274
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI$3;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/Camera2FaceView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/camera/CaptureUI$3;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/Camera2FaceView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/Camera2FaceView;->onSurfaceTextureSizeChanged(II)V

    .line 277
    :cond_0
    return-void
.end method
