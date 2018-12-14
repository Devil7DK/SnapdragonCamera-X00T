.class public Lcom/android/camera/imageprocessor/FrameProcessor;
.super Ljava/lang/Object;
.source "FrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;,
        Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;
    }
.end annotation


# static fields
.field public static final FILTER_MAKEUP:I = 0x1

.field public static final FILTER_NONE:I = 0x0

.field public static final LISTENER_TRACKING_FOCUS:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllocationLock:Ljava/lang/Object;

.field private mFinalFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mInputAllocation:Landroid/renderscript/Allocation;

.field private mInputImageReader:Landroid/media/ImageReader;

.field private mIsActive:Z

.field private mIsAllocationEverUsed:Z

.field private mIsVideoOn:Z

.field private mListeningHandler:Landroid/os/Handler;

.field private mListeningTask:Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

.field private mListeningThread:Landroid/os/HandlerThread;

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutingHandler:Landroid/os/Handler;

.field private mOutingThread:Landroid/os/HandlerThread;

.field private mOutputAllocation:Landroid/renderscript/Allocation;

.field private mPreviewFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAllocation:Landroid/renderscript/Allocation;

.field private mProcessingHandler:Landroid/os/Handler;

.field private mProcessingThread:Landroid/os/HandlerThread;

.field private mRs:Landroid/renderscript/RenderScript;

.field mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

.field mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

.field private mSize:Landroid/util/Size;

.field private mSurfaceAsItIs:Landroid/view/Surface;

.field private mTask:Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

.field private mVideoOutputAllocation:Landroid/renderscript/Allocation;

.field private mVideoSurfaceAsItIs:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/CaptureModule;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "module"    # Lcom/android/camera/CaptureModule;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    .line 97
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mActivity:Landroid/app/Activity;

    .line 98
    iput-object p2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    .line 103
    new-instance v0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    .line 104
    new-instance v0, Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/imageprocessor/FrameProcessor;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/FrameProcessor;->createAllocation(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/imageprocessor/FrameProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsAllocationEverUsed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningTask:Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method private addFilter(I)V
    .locals 2
    .param p1, "filterId"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 206
    new-instance v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;

    .end local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-direct {v0, v1}, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    .line 211
    .restart local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isFrameListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    return-void

    .line 207
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 208
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;

    .end local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-direct {v0, v1}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;-><init>(Lcom/android/camera/CaptureModule;)V

    .restart local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    goto :goto_0
.end method

.method private cleanFilterSet()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 179
    .local v0, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    goto :goto_0

    .line 182
    .end local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 184
    .restart local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    goto :goto_1

    .line 187
    .end local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method private createAllocation(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stridePad"    # I

    .prologue
    const/4 v5, 0x1

    .line 145
    new-instance v2, Landroid/renderscript/Type$Builder;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 146
    .local v2, "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {v2, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 147
    invoke-virtual {v2, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 148
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 149
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 150
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 151
    .local v1, "nv21TypeBuilder":Landroid/renderscript/Type$Builder;
    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 152
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    .line 153
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_gIn(Landroid/renderscript/Allocation;)V

    .line 154
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_gOut(Landroid/renderscript/Allocation;)V

    .line 155
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_width(J)V

    .line 156
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_height(J)V

    .line 157
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_pad(J)V

    .line 158
    const/16 v0, 0x5a

    .line 159
    .local v0, "degree":I
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 161
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    sget v4, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    if-ne v3, v4, :cond_0

    .line 163
    add-int/lit8 v3, v0, -0x5a

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_degree(J)V

    .line 167
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->set_gIn(Landroid/renderscript/Allocation;)V

    .line 168
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->set_width(J)V

    .line 169
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->set_height(J)V

    .line 170
    return-void
.end method

.method private getReaderSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    monitor-exit v1

    .line 289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/util/Size;)V
    .locals 6
    .param p1, "previewDim"    # Landroid/util/Size;

    .prologue
    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    .line 109
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    .line 110
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x8

    invoke-static {v1, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    .line 113
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 114
    .local v0, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 115
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 116
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    const/16 v4, 0x41

    invoke-static {v1, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 119
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "FrameProcessor"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    .line 121
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingHandler:Landroid/os/Handler;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 126
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "FrameOutingThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    .line 127
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingHandler:Landroid/os/Handler;

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 132
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "FrameListeningThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    .line 133
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningHandler:Landroid/os/Handler;

    .line 137
    :cond_2
    new-instance v1, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    invoke-direct {v1, p0}, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;-><init>(Lcom/android/camera/imageprocessor/FrameProcessor;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningTask:Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    .line 138
    new-instance v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

    invoke-direct {v1, p0}, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;-><init>(Lcom/android/camera/imageprocessor/FrameProcessor;)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mTask:Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

    .line 139
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mTask:Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsAllocationEverUsed:Z

    .line 141
    monitor-exit v2

    .line 142
    return-void

    .line 141
    .end local v0    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFrameFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInputSurfaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    :goto_0
    return-object v0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->getReaderSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->getReaderSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isFrameFilterEnabled()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFrameListnerEnabled()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 221
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    .line 222
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsAllocationEverUsed:Z

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 237
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_4

    .line 243
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 245
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 251
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_5

    .line 252
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 254
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_6

    .line 261
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 263
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 270
    .local v0, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    goto :goto_3

    .line 241
    .end local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 272
    :cond_7
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 273
    .restart local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    goto :goto_4

    .line 275
    .end local v0    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :cond_8
    return-void

    .line 266
    :catch_0
    move-exception v1

    goto :goto_2

    .line 257
    :catch_1
    move-exception v1

    goto :goto_1

    .line 248
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    .line 282
    return-void
.end method

.method public onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V
    .locals 3
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "filterIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->cleanFilterSet()V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 195
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->addFilter(I)V

    goto :goto_0

    .line 198
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameListnerEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/imageprocessor/FrameProcessor;->init(Landroid/util/Size;)V

    .line 201
    :cond_2
    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSurfaceAsItIs:Landroid/view/Surface;

    .line 328
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 331
    :cond_0
    return-void
.end method

.method public setVideoOutputSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 334
    if-nez p1, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 339
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    .line 340
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 340
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 344
    :cond_2
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoSurfaceAsItIs:Landroid/view/Surface;

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    .line 346
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    if-nez v1, :cond_3

    .line 349
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 350
    .local v0, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 351
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 352
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    const/16 v4, 0x41

    invoke-static {v1, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    .line 355
    .end local v0    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 356
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
