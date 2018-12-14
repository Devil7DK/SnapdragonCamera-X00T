.class public Lcom/android/camera/MosaicPreviewRenderer;
.super Ljava/lang/Object;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MosaicPreviewRenderer$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_MosaicPreviewRenderer"


# instance fields
.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mEnableWarpedPanoPreview:Z

.field private mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

.field private mHeight:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsLandscape:Z

.field private mOrientation:I

.field private mSTRenderer:Lcom/android/camera/SurfaceTextureRenderer;

.field private final mTransformMatrix:[F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;IIZIZ)V
    .locals 4
    .param p1, "tex"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "isLandscape"    # Z
    .param p5, "orientation"    # I
    .param p6, "enableWarpedPanoPreview"    # Z

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 37
    iput v3, p0, Lcom/android/camera/MosaicPreviewRenderer;->mOrientation:I

    .line 38
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F

    .line 40
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 47
    iput-boolean v3, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEnableWarpedPanoPreview:Z

    .line 152
    iput-boolean p4, p0, Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 153
    iput p5, p0, Lcom/android/camera/MosaicPreviewRenderer;->mOrientation:I

    .line 154
    iput-boolean p6, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEnableWarpedPanoPreview:Z

    .line 155
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PanoramaRealtimeRenderer"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v1, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;-><init>(Lcom/android/camera/MosaicPreviewRenderer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    .line 158
    iput p2, p0, Lcom/android/camera/MosaicPreviewRenderer;->mWidth:I

    .line 159
    iput p3, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHeight:I

    .line 161
    new-instance v0, Lcom/android/camera/MosaicPreviewRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/MosaicPreviewRenderer$1;-><init>(Lcom/android/camera/MosaicPreviewRenderer;)V

    .line 167
    .local v0, "dummy":Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;
    new-instance v1, Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    invoke-direct {v1, p1, v2, v0}, Lcom/android/camera/SurfaceTextureRenderer;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;)V

    iput-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mSTRenderer:Lcom/android/camera/SurfaceTextureRenderer;

    .line 172
    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    invoke-virtual {v1, v3}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->sendMessageSync(I)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/MosaicPreviewRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEnableWarpedPanoPreview:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/MosaicPreviewRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/MosaicPreviewRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/MosaicPreviewRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/MosaicPreviewRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public alignFrameSync()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->sendMessageSync(I)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mSTRenderer:Lcom/android/camera/SurfaceTextureRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureRenderer;->draw(Z)V

    .line 202
    return-void
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public previewReset(IIZI)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "isLandscape"    # Z
    .param p4, "orientation"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mWidth:I

    .line 177
    iput p2, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHeight:I

    .line 178
    iput-boolean p3, p0, Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 179
    iput p4, p0, Lcom/android/camera/MosaicPreviewRenderer;->mOrientation:I

    .line 180
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->sendEmptyMessage(I)Z

    .line 181
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mSTRenderer:Lcom/android/camera/SurfaceTextureRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureRenderer;->draw(Z)V

    .line 182
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mSTRenderer:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureRenderer;->release()V

    .line 186
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->sendMessageSync(I)V

    .line 187
    return-void
.end method

.method public showPreviewFrame()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->sendEmptyMessage(I)Z

    .line 196
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mSTRenderer:Lcom/android/camera/SurfaceTextureRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureRenderer;->draw(Z)V

    .line 197
    return-void
.end method

.method public showPreviewFrameSync()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 190
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHandler:Lcom/android/camera/MosaicPreviewRenderer$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$MyHandler;->sendMessageSync(I)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mSTRenderer:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureRenderer;->draw(Z)V

    .line 192
    return-void
.end method
