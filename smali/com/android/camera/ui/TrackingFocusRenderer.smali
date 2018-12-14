.class public Lcom/android/camera/ui/TrackingFocusRenderer;
.super Lcom/android/camera/ui/OverlayRenderer;
.source "TrackingFocusRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;
    }
.end annotation


# static fields
.field private static final CIRCLE_THUMB_SIZE:I = 0x64

.field private static final DEBUG:Z = false

.field public static final STATUS_INIT:I = 0x0

.field public static final STATUS_INPUT:I = 0x1

.field public static final STATUS_TRACKED:I = 0x3

.field public static final STATUS_TRACKING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrackingFocusRenderer"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mFocusRequestThread:Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

.field private mInX:I

.field private mInY:I

.field private mIsFlipped:Z

.field private mLock:Ljava/lang/Object;

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mRect:Landroid/graphics/Rect;

.field private mResult:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

.field private mStatus:I

.field private mSurfaceDim:Landroid/graphics/Rect;

.field private mTargetPaint:Landroid/graphics/Paint;

.field private mUI:Lcom/android/camera/CaptureUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureUI;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "module"    # Lcom/android/camera/CaptureModule;
    .param p3, "ui"    # Lcom/android/camera/CaptureUI;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 104
    invoke-direct {p0}, Lcom/android/camera/ui/OverlayRenderer;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mFocusRequestThread:Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

    .line 50
    iput v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInX:I

    .line 51
    iput v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInY:I

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mLock:Ljava/lang/Object;

    .line 61
    iput v2, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    .line 62
    iput-boolean v2, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mIsFlipped:Z

    .line 105
    iput-object p1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mActivity:Lcom/android/camera/CameraActivity;

    .line 106
    iput-object p2, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mModule:Lcom/android/camera/CaptureModule;

    .line 107
    iput-object p3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mUI:Lcom/android/camera/CaptureUI;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/TrackingFocusRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/TrackingFocusRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/TrackingFocusRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mResult:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/TrackingFocusRenderer;)Lcom/android/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/TrackingFocusRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mModule:Lcom/android/camera/CaptureModule;

    return-object v0
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method private translateToSurface(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 9
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 194
    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v3, v5, v6

    .line 195
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 197
    .local v4, "y":I
    iget-object v5, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_2

    .line 198
    iget-boolean v5, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mIsFlipped:Z

    if-eqz v5, :cond_1

    .line 199
    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int v4, v5, v6

    .line 210
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 211
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 212
    .local v0, "h":I
    iget-object v5, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v3

    iget-object v7, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, p3

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 213
    iget-object v5, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    iget-object v7, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, p2

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v4, v5, v6

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .local v1, "rect":Landroid/graphics/Rect;
    div-int/lit8 v5, v2, 0x2

    sub-int v5, v3, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 216
    div-int/lit8 v5, v0, 0x2

    sub-int v5, v4, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 217
    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 218
    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 219
    return-object v1

    .line 201
    .end local v0    # "h":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "w":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    goto :goto_0

    .line 204
    :cond_2
    iget-boolean v5, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mIsFlipped:Z

    if-eqz v5, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 206
    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public getInputCords(II)[I
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x1

    .line 142
    iget-object v4, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 143
    :try_start_0
    iget v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    if-eq v3, v5, :cond_0

    .line 144
    const/4 v3, 0x0

    monitor-exit v4

    .line 167
    :goto_0
    return-object v3

    .line 146
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    .line 147
    iget-object v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInY:I

    sub-int v1, v3, v5

    .line 148
    .local v1, "x":I
    iget v2, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInX:I

    .line 149
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v5

    .line 150
    .local v0, "bottomMargin":I
    sub-int v3, v1, v0

    int-to-float v3, v3

    int-to-float v5, p1

    iget-object v6, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    float-to-int v1, v3

    .line 151
    iget-object v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    int-to-float v5, p2

    iget-object v6, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 154
    iget-object v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-boolean v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mIsFlipped:Z

    if-nez v3, :cond_1

    .line 156
    add-int/lit8 v3, p1, -0x1

    sub-int v1, v3, v1

    .line 157
    add-int/lit8 v3, p2, -0x1

    sub-int v2, v3, v2

    .line 167
    :cond_1
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v1, v3, v5

    const/4 v5, 0x1

    aput v2, v3, v5

    monitor-exit v4

    goto :goto_0

    .line 168
    .end local v0    # "bottomMargin":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 160
    .restart local v0    # "bottomMargin":I
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mIsFlipped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    .line 161
    add-int/lit8 v3, p1, -0x1

    sub-int v1, v3, v1

    goto :goto_1

    .line 163
    :cond_3
    add-int/lit8 v3, p2, -0x1

    sub-int v2, v3, v2

    goto :goto_1
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x3

    const/high16 v2, -0x10000

    .line 226
    iget-object v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mResult:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    if-nez v0, :cond_1

    .line 228
    monitor-exit v1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    if-ne v0, v3, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mResult:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mRect:Landroid/graphics/Rect;

    .line 233
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    if-ne v0, v3, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 240
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 245
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInY:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    :pswitch_0
    return v4

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInX:I

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInY:I

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInX:I

    iget v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInY:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    monitor-exit v1

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    .line 134
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/TrackingFocusRenderer;->update()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public putRegisteredCords(Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;II)V
    .locals 2
    .param p1, "result"    # Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    iget-object v0, p1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/ui/TrackingFocusRenderer;->translateToSurface(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    .line 176
    iput-object p1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mResult:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    .line 181
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/ui/TrackingFocusRenderer$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/TrackingFocusRenderer$1;-><init>(Lcom/android/camera/ui/TrackingFocusRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSurfaceDim(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mSurfaceDim:Landroid/graphics/Rect;

    .line 102
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/camera/ui/OverlayRenderer;->setVisible(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mModule:Lcom/android/camera/CaptureModule;

    .line 77
    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mIsFlipped:Z

    .line 83
    :goto_0
    if-nez p1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mStatus:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mResult:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInX:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mInY:I

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mFocusRequestThread:Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mFocusRequestThread:Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->kill()V

    .line 92
    iput-object v3, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mFocusRequestThread:Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

    .line 98
    :cond_0
    :goto_1
    return-void

    .line 80
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mIsFlipped:Z

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 95
    :cond_2
    new-instance v0, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;-><init>(Lcom/android/camera/ui/TrackingFocusRenderer;Lcom/android/camera/ui/TrackingFocusRenderer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mFocusRequestThread:Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer;->mFocusRequestThread:Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/TrackingFocusRenderer$FocusRequestThread;->start()V

    goto :goto_1
.end method

.method public showFail(Z)V
    .locals 0
    .param p1, "timeout"    # Z

    .prologue
    .line 262
    return-void
.end method

.method public showStart()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public showSuccess(Z)V
    .locals 0
    .param p1, "timeout"    # Z

    .prologue
    .line 257
    return-void
.end method
