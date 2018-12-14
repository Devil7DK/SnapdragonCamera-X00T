.class Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    invoke-static {v0}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->access$3100(Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    invoke-static {v1}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->access$3100(Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 662
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;->this$1:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)V

    .line 663
    return-void
.end method
