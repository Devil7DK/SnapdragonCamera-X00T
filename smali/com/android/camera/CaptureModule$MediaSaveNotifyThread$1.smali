.class Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    invoke-static {v0}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->access$400(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    invoke-static {v1}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->access$400(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 461
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$500(Lcom/android/camera/CaptureModule;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$500(Lcom/android/camera/CaptureModule;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 462
    :cond_1
    return-void
.end method
