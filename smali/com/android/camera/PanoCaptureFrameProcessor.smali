.class public Lcom/android/camera/PanoCaptureFrameProcessor;
.super Ljava/lang/Object;
.source "PanoCaptureFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;
    }
.end annotation


# instance fields
.field private mARGBOutputAllocation:Landroid/renderscript/Allocation;

.field private mActivity:Landroid/app/Activity;

.field private mAllocationLock:Ljava/lang/Object;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mController:Lcom/android/camera/PanoCaptureModule;

.field private mInputAllocation:Landroid/renderscript/Allocation;

.field private mIsAllocationEverUsed:Z

.field private mIsPanoActive:Z

.field private mPanoSwitchLock:Ljava/lang/Object;

.field private mProcessingHandler:Landroid/os/Handler;

.field private mProcessingThread:Landroid/os/HandlerThread;

.field private mRs:Landroid/renderscript/RenderScript;

.field mRsYuvToRGB:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private mSize:Landroid/util/Size;

.field private mSurface:Landroid/view/Surface;

.field public mTask:Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;

.field private mUI:Lcom/android/camera/PanoCaptureUI;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/app/Activity;Lcom/android/camera/PanoCaptureUI;Lcom/android/camera/PanoCaptureModule;)V
    .locals 6
    .param p1, "dimensions"    # Landroid/util/Size;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "ui"    # Lcom/android/camera/PanoCaptureUI;
    .param p4, "controller"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    .line 71
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mPanoSwitchLock:Ljava/lang/Object;

    .line 72
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mAllocationLock:Ljava/lang/Object;

    .line 76
    iput-object p3, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mUI:Lcom/android/camera/PanoCaptureUI;

    .line 77
    iput-object p1, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mSize:Landroid/util/Size;

    .line 78
    iput-object p2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mActivity:Landroid/app/Activity;

    .line 79
    iput-object p4, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mController:Lcom/android/camera/PanoCaptureModule;

    .line 80
    iget-object v3, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    .line 82
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRsYuvToRGB:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 84
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 85
    .local v1, "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 86
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 87
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 88
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    const/16 v5, 0x21

    invoke-static {v2, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 91
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 92
    .local v0, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 93
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 94
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mARGBOutputAllocation:Landroid/renderscript/Allocation;

    .line 96
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "PanoCapture_FrameProcessor"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    .line 98
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v2, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingHandler:Landroid/os/Handler;

    .line 101
    :cond_0
    new-instance v2, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;-><init>(Lcom/android/camera/PanoCaptureFrameProcessor;)V

    iput-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mTask:Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;

    .line 102
    iget-object v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mTask:Lcom/android/camera/PanoCaptureFrameProcessor$ProcessingTask;

    invoke-virtual {v2, v4}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsAllocationEverUsed:Z

    .line 104
    monitor-exit v3

    .line 105
    return-void

    .line 104
    .end local v0    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    .end local v1    # "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/PanoCaptureFrameProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoCaptureFrameProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PanoCaptureFrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mARGBOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/PanoCaptureFrameProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsAllocationEverUsed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/PanoCaptureFrameProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mPanoSwitchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PanoCaptureFrameProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PanoCaptureFrameProcessor;)Lcom/android/camera/PanoCaptureUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureFrameProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mUI:Lcom/android/camera/PanoCaptureUI;

    return-object v0
.end method


# virtual methods
.method public changePanoStatus(ZZ)V
    .locals 3
    .param p1, "newStatus"    # Z
    .param p2, "isCancelling"    # Z

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    if-ne p1, v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mPanoSwitchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->isPanoCompleting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    monitor-exit v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_2
    :try_start_1
    iput-boolean p1, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/android/camera/PanoCaptureUI;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V

    .line 151
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureModule;->unlockFocus()V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PanoCaptureFrameProcessor;->changePanoStatus(ZZ)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsAllocationEverUsed:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 115
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 116
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mARGBOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 118
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mARGBOutputAllocation:Landroid/renderscript/Allocation;

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mProcessingHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :goto_0
    return-void

    .line 121
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    monitor-exit v1

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPanoActive()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureFrameProcessor;->mIsPanoActive:Z

    return v0
.end method
