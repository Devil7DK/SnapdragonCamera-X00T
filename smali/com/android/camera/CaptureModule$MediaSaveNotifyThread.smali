.class Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;
.super Ljava/lang/Thread;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaveNotifyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureModule;Landroid/net/Uri;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 442
    iput-object p2, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 443
    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;-><init>(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$602(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .line 465
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 447
    return-void
.end method
