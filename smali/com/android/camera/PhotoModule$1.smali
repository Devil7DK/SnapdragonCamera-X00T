.class Lcom/android/camera/PhotoModule$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/MediaSaveService$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    new-instance v1, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v1, v2, p1}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;-><init>(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3302(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .line 677
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->start()V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 682
    :cond_2
    if-eqz p1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    goto :goto_0
.end method
