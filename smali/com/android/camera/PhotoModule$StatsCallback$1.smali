.class Lcom/android/camera/PhotoModule$StatsCallback$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$StatsCallback;->onCameraData([ILandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$StatsCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$StatsCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$StatsCallback;

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/camera/PhotoModule$StatsCallback$1;->this$1:Lcom/android/camera/PhotoModule$StatsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StatsCallback$1;->this$1:Lcom/android/camera/PhotoModule$StatsCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$StatsCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StatsCallback$1;->this$1:Lcom/android/camera/PhotoModule$StatsCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$StatsCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GraphView;->PreviewChanged()V

    .line 1486
    :cond_0
    return-void
.end method
