.class public Lcom/android/camera/SurfaceTextureRenderer$RenderThread;
.super Ljava/lang/Thread;
.source "SurfaceTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SurfaceTextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderThread"
.end annotation


# instance fields
.field private mRenderStopped:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/camera/SurfaceTextureRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/SurfaceTextureRenderer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;->mRenderStopped:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;->mRenderStopped:Ljava/lang/Boolean;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;->mRenderStopped:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureRenderer;->draw(Z)V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopRender()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;->mRenderStopped:Ljava/lang/Boolean;

    monitor-enter v1

    .line 78
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;->mRenderStopped:Ljava/lang/Boolean;

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
