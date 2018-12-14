.class Lcom/android/camera/FocusOverlayManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusOverlayManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 125
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 132
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
