.class Lcom/android/camera/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoModule;
    .param p2, "x1"    # Lcom/android/camera/VideoModule$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 380
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 438
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    .line 404
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$900(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)V

    .line 407
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$1100(Lcom/android/camera/VideoModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1200(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 414
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1300(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 419
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1400(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 428
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$902(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 433
    :pswitch_7
    iget-object v2, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    iget-object v3, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$1500(Lcom/android/camera/VideoModule;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lcom/android/camera/VideoModule;->access$1600(Lcom/android/camera/VideoModule;Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 380
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
