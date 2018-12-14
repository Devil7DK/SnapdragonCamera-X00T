.class Lcom/android/camera/CaptureModule$6$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$6;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$6;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$6;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/camera/CaptureModule$6$1;->this$1:Lcom/android/camera/CaptureModule$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6$1;->this$1:Lcom/android/camera/CaptureModule$6;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3800(Lcom/android/camera/CaptureModule;)V

    .line 1181
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6$1;->this$1:Lcom/android/camera/CaptureModule$6;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1182
    return-void
.end method
