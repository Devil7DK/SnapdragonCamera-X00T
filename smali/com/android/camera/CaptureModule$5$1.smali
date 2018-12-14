.class Lcom/android/camera/CaptureModule$5$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$5;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$5;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$5;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/camera/CaptureModule$5$1;->this$1:Lcom/android/camera/CaptureModule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/camera/CaptureModule$5$1;->this$1:Lcom/android/camera/CaptureModule$5;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$5$1;->this$1:Lcom/android/camera/CaptureModule$5;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2500(Lcom/android/camera/CaptureModule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->onCameraOpened(Ljava/util/List;)V

    .line 705
    return-void
.end method
