.class Lcom/android/camera/ui/Camera2FaceView$1;
.super Landroid/os/Handler;
.source "Camera2FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/Camera2FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/Camera2FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/Camera2FaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/Camera2FaceView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView$1;->this$0:Lcom/android/camera/ui/Camera2FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView$1;->this$0:Lcom/android/camera/ui/Camera2FaceView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView$1;->this$0:Lcom/android/camera/ui/Camera2FaceView;

    iget-object v1, p0, Lcom/android/camera/ui/Camera2FaceView$1;->this$0:Lcom/android/camera/ui/Camera2FaceView;

    invoke-static {v1}, Lcom/android/camera/ui/Camera2FaceView;->access$100(Lcom/android/camera/ui/Camera2FaceView;)[Landroid/hardware/camera2/params/Face;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->access$002(Lcom/android/camera/ui/Camera2FaceView;[Landroid/hardware/camera2/params/Face;)[Landroid/hardware/camera2/params/Face;

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView$1;->this$0:Lcom/android/camera/ui/Camera2FaceView;

    iget-object v1, p0, Lcom/android/camera/ui/Camera2FaceView$1;->this$0:Lcom/android/camera/ui/Camera2FaceView;

    invoke-static {v1}, Lcom/android/camera/ui/Camera2FaceView;->access$300(Lcom/android/camera/ui/Camera2FaceView;)[Lcom/android/camera/ExtendedFace;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->access$202(Lcom/android/camera/ui/Camera2FaceView;[Lcom/android/camera/ExtendedFace;)[Lcom/android/camera/ExtendedFace;

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView$1;->this$0:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->invalidate()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
