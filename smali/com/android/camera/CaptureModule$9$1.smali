.class Lcom/android/camera/CaptureModule$9$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$9;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$9;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$9;

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/android/camera/CaptureModule$9$1;->this$1:Lcom/android/camera/CaptureModule$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/camera/CaptureModule$9$1;->this$1:Lcom/android/camera/CaptureModule$9;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$9;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->doShutterAnimation()V

    .line 1690
    return-void
.end method
