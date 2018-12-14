.class Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;
.super Ljava/lang/Thread;
.source "TrackingFocusRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/TrackingFocusRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusRequestThread"
.end annotation


# static fields
.field private static final FOCUS_DELAY:I = 0x3e8

.field private static final MIN_DIFF_CORDS:I = 0x64

.field private static final MIN_DIFF_SIZE:I = 0x64


# instance fields
.field private isRunning:Z

.field private mNewHeight:I

.field private mNewWidth:I

.field private mNewX:I

.field private mNewY:I

.field private mOldHeight:I

.field private mOldWidth:I

.field private mOldX:I

.field private mOldY:I

.field final synthetic this$0:Lcom/android/camera/ui/TrackingFocusRenderer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/TrackingFocusRenderer;)V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 269
    iput-object p1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->isRunning:Z

    .line 274
    iput v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldX:I

    .line 275
    iput v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldY:I

    .line 276
    iput v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldWidth:I

    .line 277
    iput v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/TrackingFocusRenderer;Lcom/android/camera/ui/TrackingFocusRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/TrackingFocusRenderer;
    .param p2, "x1"    # Lcom/android/camera/ui/TrackingFocusRenderer$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;-><init>(Lcom/android/camera/ui/TrackingFocusRenderer;)V

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->isRunning:Z

    .line 285
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 288
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->isRunning:Z

    if-eqz v0, :cond_4

    .line 290
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$100(Lcom/android/camera/ui/TrackingFocusRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    .line 297
    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-nez v0, :cond_2

    .line 298
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 300
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewX:I

    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewY:I

    .line 302
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewWidth:I

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewHeight:I

    .line 304
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldX:I

    iget v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldY:I

    iget v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewY:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldWidth:I

    iget v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewWidth:I

    sub-int/2addr v0, v1

    .line 306
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldHeight:I

    iget v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewHeight:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 308
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->access$300(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewX:I

    iget v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CaptureModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 309
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewX:I

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldX:I

    .line 310
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewY:I

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldY:I

    .line 311
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewWidth:I

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldWidth:I

    .line 312
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mNewHeight:I

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->mOldHeight:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 313
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 291
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 317
    :cond_4
    return-void
.end method
