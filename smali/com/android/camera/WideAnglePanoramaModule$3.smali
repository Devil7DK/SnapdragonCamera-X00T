.class Lcom/android/camera/WideAnglePanoramaModule$3;
.super Landroid/os/Handler;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 318
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1600(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 319
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1700(Lcom/android/camera/WideAnglePanoramaModule;Landroid/graphics/Bitmap;)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaModule;->saveHighResMosaic()V

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1600(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$900(Lcom/android/camera/WideAnglePanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1800(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 336
    :goto_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$2200(Lcom/android/camera/WideAnglePanoramaModule;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 328
    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$1900(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$2000(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 329
    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$2100(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/WideAnglePanoramaModule$3$1;

    invoke-direct {v4, p0}, Lcom/android/camera/WideAnglePanoramaModule$3$1;-><init>(Lcom/android/camera/WideAnglePanoramaModule$3;)V

    .line 327
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/WideAnglePanoramaUI;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1600(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1800(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$2200(Lcom/android/camera/WideAnglePanoramaModule;)V

    goto :goto_0

    .line 344
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 348
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1800(Lcom/android/camera/WideAnglePanoramaModule;)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
