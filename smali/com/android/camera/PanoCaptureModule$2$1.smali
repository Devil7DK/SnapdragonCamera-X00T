.class Lcom/android/camera/PanoCaptureModule$2$1;
.super Ljava/lang/Object;
.source "PanoCaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureModule$2;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PanoCaptureModule$2;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureModule$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PanoCaptureModule$2;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule$2$1;->this$1:Lcom/android/camera/PanoCaptureModule$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2$1;->this$1:Lcom/android/camera/PanoCaptureModule$2;

    iget-object v0, v0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$200(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/PanoCaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->onCameraOpened()V

    .line 166
    return-void
.end method
