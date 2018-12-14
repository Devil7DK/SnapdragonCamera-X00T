.class Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaveNotifyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 643
    iput-object p2, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 644
    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 651
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;-><init>(Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 665
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3302(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .line 666
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 648
    return-void
.end method
