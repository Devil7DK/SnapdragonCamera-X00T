.class Lcom/android/camera/CaptureModule$13$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$13;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$13;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$13;

    .prologue
    .line 1901
    iput-object p1, p0, Lcom/android/camera/CaptureModule$13$1;->this$1:Lcom/android/camera/CaptureModule$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/camera/CaptureModule$13$1;->this$1:Lcom/android/camera/CaptureModule$13;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1905
    return-void
.end method
