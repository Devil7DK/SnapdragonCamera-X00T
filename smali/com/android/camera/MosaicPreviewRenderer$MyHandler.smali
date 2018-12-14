.class Lcom/android/camera/MosaicPreviewRenderer$MyHandler;
.super Landroid/os/Handler;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MosaicPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ALIGN_FRAME_SYNC:I = 0x3

.field public static final MSG_DO_PREVIEW_RESET:I = 0x5

.field public static final MSG_INIT_SYNC:I = 0x0

.field public static final MSG_RELEASE:I = 0x4

.field public static final MSG_SHOW_PREVIEW_FRAME:I = 0x2

.field public static final MSG_SHOW_PREVIEW_FRAME_SYNC:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/camera/MosaicPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/MosaicPreviewRenderer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    .line 57
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    return-void
.end method

.method private doAlignFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 93
    invoke-static {v2}, Lcom/android/camera/MosaicRenderer;->setPreviewBackground(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->preprocess([F)V

    .line 95
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->step()V

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->setPreviewBackground(Z)V

    .line 98
    invoke-static {v2}, Lcom/android/camera/MosaicRenderer;->setWarping(Z)V

    .line 99
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->transferGPUtoCPU()V

    .line 100
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->updateMatrix()V

    .line 101
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->step()V

    .line 102
    return-void
.end method

.method private doInit()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$300(Lcom/android/camera/MosaicPreviewRenderer;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/camera/MosaicRenderer;->init(Z)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$102(Lcom/android/camera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 117
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$700(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MosaicRenderer;->reset(IIZI)V

    .line 118
    return-void
.end method

.method private doPreviewReset()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$700(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MosaicRenderer;->reset(IIZI)V

    .line 122
    return-void
.end method

.method private doRelease()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$800(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 127
    return-void
.end method

.method private doShowPreviewFrame()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 106
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->setWarping(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->preprocess([F)V

    .line 111
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->updateMatrix()V

    .line 112
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->step()V

    .line 113
    return-void
.end method

.method private releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 131
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->doInit()V

    .line 65
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->doShowPreviewFrame()V

    .line 69
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->doPreviewReset()V

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->doShowPreviewFrame()V

    goto :goto_0

    .line 78
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->doAlignFrame()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 82
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->doRelease()V

    .line 83
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->sendEmptyMessage(I)Z

    .line 137
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 138
    return-void
.end method
