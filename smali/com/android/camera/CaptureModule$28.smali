.class Lcom/android/camera/CaptureModule$28;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->updateFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 4738
    iput-object p1, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$28;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4741
    iget-object v0, p0, Lcom/android/camera/CaptureModule$28;->val$value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule$28;->val$value:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->onStopFaceDetection()V

    .line 4747
    :goto_0
    return-void

    .line 4743
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$6500(Lcom/android/camera/CaptureModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    .line 4744
    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$6600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->isFacingFront(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    .line 4745
    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$6600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$28;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getSensorActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 4743
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CaptureUI;->onStartFaceDetection(IZLandroid/graphics/Rect;)V

    goto :goto_0
.end method
