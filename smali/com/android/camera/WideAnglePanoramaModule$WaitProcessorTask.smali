.class Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WideAnglePanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;Lcom/android/camera/WideAnglePanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/WideAnglePanoramaModule$1;

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1186
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 1190
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1197
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1198
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpace()J

    .line 1199
    const/4 v0, 0x0

    return-object v0

    .line 1197
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1186
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$3402(Lcom/android/camera/WideAnglePanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1205
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/WideAnglePanoramaUI;->dismissAllDialogs()V

    .line 1207
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$3500(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 1208
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/WideAnglePanoramaUI;->getPreviewAreaSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1209
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$1302(Lcom/android/camera/WideAnglePanoramaModule;I)I

    .line 1210
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$1402(Lcom/android/camera/WideAnglePanoramaModule;I)I

    .line 1211
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$3600(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 1212
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$1800(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 1213
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 1214
    return-void
.end method
