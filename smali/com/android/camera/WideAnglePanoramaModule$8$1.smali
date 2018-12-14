.class Lcom/android/camera/WideAnglePanoramaModule$8$1;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/WideAnglePanoramaModule$8;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule$8;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/WideAnglePanoramaModule$8;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$8$1;->this$1:Lcom/android/camera/WideAnglePanoramaModule$8;

    iput-object p2, p0, Lcom/android/camera/WideAnglePanoramaModule$8$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$8$1;->this$1:Lcom/android/camera/WideAnglePanoramaModule$8;

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->showFinalMosaic()V

    .line 766
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$8$1;->this$1:Lcom/android/camera/WideAnglePanoramaModule$8;

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$8$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 767
    return-void
.end method
