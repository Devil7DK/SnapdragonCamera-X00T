.class Lcom/android/camera/CaptureModule$MyCameraHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4836
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/CaptureModule;

    .line 4837
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4838
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4842
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4843
    .local v0, "id":I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4851
    :goto_0
    return-void

    .line 4845
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0}, Lcom/android/camera/CaptureModule;->access$6700(Lcom/android/camera/CaptureModule;I)V

    goto :goto_0

    .line 4848
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0}, Lcom/android/camera/CaptureModule;->access$6800(Lcom/android/camera/CaptureModule;I)V

    goto :goto_0

    .line 4843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
