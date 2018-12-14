.class Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;
.super Ljava/lang/Object;
.source "PanoCaptureFrameProcessor.java"

# interfaces
.implements Landroid/renderscript/Allocation$OnBufferAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoCaptureFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessingTask"
.end annotation


# instance fields
.field private mFrameCounter:I

.field private mPendingFrames:I

.field final synthetic this$0:Lcom/android/camera/PanoCaptureFrameProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/PanoCaptureFrameProcessor;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    const/4 v0, 0x0

    .line 165
    iput-object p1, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->mPendingFrames:I

    .line 163
    iput v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->mFrameCounter:I

    .line 166
    invoke-static {p1}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$100(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$100(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$002(Lcom/android/camera/PanoCaptureFrameProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 167
    return-void
.end method


# virtual methods
.method public onBufferAvailable(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$200(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->mPendingFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->mPendingFrames:I

    .line 175
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$200(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget v1, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->mPendingFrames:I

    .line 184
    .local v1, "pendingFrames":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->mPendingFrames:I

    .line 185
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$200(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$300(Lcom/android/camera/PanoCaptureFrameProcessor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$400(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$500(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    :goto_0
    return-void

    .line 186
    .end local v1    # "pendingFrames":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 191
    .restart local v1    # "pendingFrames":I
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$602(Lcom/android/camera/PanoCaptureFrameProcessor;Z)Z

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 193
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$400(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->ioReceive()V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$700(Lcom/android/camera/PanoCaptureFrameProcessor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$800(Lcom/android/camera/PanoCaptureFrameProcessor;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$900(Lcom/android/camera/PanoCaptureFrameProcessor;)Lcom/android/camera/PanoCaptureUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PanoCaptureUI;->isFrameProcessing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    iget-object v2, v2, Lcom/android/camera/PanoCaptureFrameProcessor;->mRsYuvToRGB:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v5, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v5}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$400(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 198
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    iget-object v2, v2, Lcom/android/camera/PanoCaptureFrameProcessor;->mRsYuvToRGB:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v5, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v5}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$500(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 199
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$500(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v5}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$000(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$900(Lcom/android/camera/PanoCaptureFrameProcessor;)Lcom/android/camera/PanoCaptureUI;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-static {v5}, Lcom/android/camera/PanoCaptureFrameProcessor;->access$000(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/PanoCaptureUI;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V

    .line 202
    :cond_3
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 203
    :try_start_5
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 202
    .restart local v0    # "i":I
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
