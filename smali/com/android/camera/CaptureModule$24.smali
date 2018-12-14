.class Lcom/android/camera/CaptureModule$24;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->updateGraghViewVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 4209
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    iput p2, p0, Lcom/android/camera/CaptureModule$24;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4211
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4212
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$24;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera2GraphView;->setVisibility(I)V

    .line 4214
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4215
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$24;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera2GraphView;->setVisibility(I)V

    .line 4217
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4218
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$24;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera2GraphView;->setVisibility(I)V

    .line 4220
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4221
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$24;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera2GraphView;->setVisibility(I)V

    .line 4223
    :cond_3
    return-void
.end method
