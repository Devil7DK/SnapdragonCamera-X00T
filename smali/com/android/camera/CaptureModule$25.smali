.class Lcom/android/camera/CaptureModule$25;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->updateGraghView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 4228
    iput-object p1, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4230
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4231
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 4233
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4234
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 4236
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4237
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 4239
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4240
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 4242
    :cond_3
    return-void
.end method
