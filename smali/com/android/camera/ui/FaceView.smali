.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected final LOGV:Z

.field private final blink_threshold:I

.field protected volatile mBlocked:Z

.field protected mColor:I

.field protected mDisplayOrientation:I

.field protected mDisplayRotation:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private final mFailColor:I

.field private final mFocusedColor:I

.field protected final mFocusingColor:I

.field private mHandler:Landroid/os/Handler;

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMirror:Z

.field protected mOrientation:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPause:Z

.field private mPendingFaces:[Landroid/hardware/Camera$Face;

.field protected mRect:Landroid/graphics/RectF;

.field protected mStateSwitchPending:Z

.field protected mUncroppedHeight:I

.field protected mUncroppedWidth:I

.field private final smile_threashold_no_smile:I

.field private final smile_threashold_small_smile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x3c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 46
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 55
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 72
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/camera/ui/FaceView;->smile_threashold_no_smile:I

    .line 73
    iput v5, p0, Lcom/android/camera/ui/FaceView;->smile_threashold_small_smile:I

    .line 74
    iput v5, p0, Lcom/android/camera/ui/FaceView;->blink_threshold:I

    .line 78
    iput v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    .line 79
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 80
    new-instance v1, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    .line 97
    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    .line 98
    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    .line 99
    iget v1, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0c0059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    return-void

    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    move v1, v2

    .line 46
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 187
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-lez v2, :cond_17

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mUncroppedWidth:I

    move/from16 v25, v0

    .line 209
    .local v25, "rw":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mUncroppedHeight:I

    move/from16 v23, v0

    .line 211
    .local v23, "rh":I
    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    :cond_0
    move/from16 v0, v25

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_2

    .line 213
    :cond_1
    move/from16 v26, v25

    .line 214
    .local v26, "temp":I
    move/from16 v25, v23

    .line 215
    move/from16 v23, v26

    .line 217
    .end local v26    # "temp":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v2

    sub-int v2, v2, v25

    div-int/lit8 v10, v2, 0x2

    .line 219
    .local v10, "dx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v2

    sub-int v2, v2, v23

    div-int/lit8 v11, v2, 0x2

    .line 223
    .local v11, "dy":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 226
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-ge v15, v2, :cond_16

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget v2, v2, Landroid/hardware/Camera$Face;->score:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_4

    .line 226
    :cond_3
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 231
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 232
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const-string v3, "Original rect"

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 233
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 234
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const-string v3, "Transformed rect"

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 235
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v10

    int-to-float v4, v11

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->isExtendedFaceInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    const/4 v2, 0x4

    new-array v0, v2, [F

    move-object/from16 v22, v0

    .line 241
    .local v22, "point":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v8, v2, 0xc

    .line 242
    .local v8, "delta_x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v9, v2, 0xc

    .line 243
    .local v9, "delta_y":I
    const-string v2, "CAM_FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blink: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    .line 244
    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRightEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget-object v2, v2, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    if-eqz v2, :cond_8

    .line 246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_10

    .line 248
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 249
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 250
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 251
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 259
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_8

    .line 261
    const/4 v2, 0x0

    aget v2, v22, v2

    int-to-float v3, v10

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v22, v2

    int-to-float v4, v11

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v22, v2

    int-to-float v5, v10

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v22, v2

    int-to-float v6, v11

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    if-eqz v2, :cond_a

    .line 266
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_11

    .line 268
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 269
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 270
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 271
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 278
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRightEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_a

    .line 281
    const/4 v2, 0x0

    aget v2, v22, v2

    int-to-float v3, v10

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v22, v2

    int-to-float v4, v11

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v22, v2

    int-to-float v5, v10

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v22, v2

    int-to-float v6, v11

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 286
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftRightGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    .line 287
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getTopBottomGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 289
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget-object v2, v2, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v5, v5, v15

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 290
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v16, v2, v4

    .line 294
    .local v16, "length":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftRightGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    neg-int v2, v2

    int-to-double v0, v2

    move-wide/from16 v20, v0

    .line 295
    .local v20, "nGazeYaw":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getTopBottomGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    neg-int v2, v2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    .line 296
    .local v18, "nGazePitch":D
    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v2, v20, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    .line 298
    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v4

    neg-int v4, v4

    int-to-double v4, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v4, v18, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 300
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v6, v20, v6

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v28

    .line 301
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v15

    .line 302
    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v6

    neg-int v6, v6

    int-to-double v6, v6

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v6, v6, v28

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v28

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide/from16 v0, v16

    neg-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v13, v2

    .line 305
    .local v13, "gazeRollX":F
    move-wide/from16 v0, v20

    neg-double v2, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    .line 306
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    .line 307
    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v4

    neg-int v4, v4

    int-to-double v4, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v4, v18, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 309
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v6, v20, v6

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v28

    .line 310
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v15

    .line 311
    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v6

    neg-int v6, v6

    int-to-double v6, v6

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v6, v6, v28

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v28

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    move-wide/from16 v0, v16

    neg-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v14, v2

    .line 315
    .local v14, "gazeRollY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_d

    .line 316
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_12

    .line 318
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 320
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    aput v3, v22, v2

    .line 321
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    aput v3, v22, v2

    .line 328
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 329
    const/4 v2, 0x0

    aget v2, v22, v2

    int-to-float v3, v10

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v22, v2

    int-to-float v4, v11

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v22, v2

    int-to-float v5, v10

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v22, v2

    int-to-float v6, v11

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRightEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_f

    .line 334
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_13

    .line 336
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 337
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 338
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    aput v3, v22, v2

    .line 339
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    aput v3, v22, v2

    .line 347
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 348
    const/4 v2, 0x0

    aget v2, v22, v2

    int-to-float v3, v10

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v22, v2

    int-to-float v4, v11

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v22, v2

    int-to-float v5, v10

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v22, v2

    int-to-float v6, v11

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    .end local v13    # "gazeRollX":F
    .end local v14    # "gazeRollY":F
    .end local v16    # "length":D
    .end local v18    # "nGazePitch":D
    .end local v20    # "nGazeYaw":D
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget-object v2, v2, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    if-eqz v2, :cond_3

    .line 354
    const-string v2, "CAM_FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileDegree(Landroid/hardware/Camera$Face;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    .line 355
    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileScore(Landroid/hardware/Camera$Face;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_14

    .line 357
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v10

    sub-int/2addr v3, v8

    int-to-float v3, v3

    aput v3, v22, v2

    .line 358
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 359
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v10

    add-int/2addr v3, v8

    int-to-float v3, v3

    aput v3, v22, v2

    .line 360
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 362
    new-instance v12, Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v12, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 363
    .local v12, "faceMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v12, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 365
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 366
    const/4 v2, 0x0

    aget v2, v22, v2

    int-to-float v3, v10

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v22, v2

    int-to-float v4, v11

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v22, v2

    int-to-float v5, v10

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v22, v2

    int-to-float v6, v11

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 253
    .end local v12    # "faceMatrix":Landroid/graphics/Matrix;
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v8, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 254
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 255
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v8, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 256
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    goto/16 :goto_2

    .line 273
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v8, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 274
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 275
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v8, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v22, v2

    .line 276
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    goto/16 :goto_3

    .line 323
    .restart local v13    # "gazeRollX":F
    .restart local v14    # "gazeRollY":F
    .restart local v16    # "length":D
    .restart local v18    # "nGazePitch":D
    .restart local v20    # "nGazeYaw":D
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 324
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 325
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    aput v3, v22, v2

    .line 326
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    aput v3, v22, v2

    goto/16 :goto_4

    .line 341
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 342
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 343
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    aput v3, v22, v2

    .line 344
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    aput v3, v22, v2

    goto/16 :goto_5

    .line 368
    .end local v13    # "gazeRollX":F
    .end local v14    # "gazeRollY":F
    .end local v16    # "length":D
    .end local v18    # "nGazePitch":D
    .end local v20    # "nGazeYaw":D
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileDegree(Landroid/hardware/Camera$Face;)I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_15

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    rsub-int v0, v2, 0x168

    move/from16 v24, v0

    .line 371
    .local v24, "rotation_mouth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v5, v5, v15

    iget-object v5, v5, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v10

    int-to-float v4, v11

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move/from16 v0, v24

    int-to-float v4, v0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 379
    .end local v24    # "rotation_mouth":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v5, v5, v15

    iget-object v5, v5, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v10

    int-to-float v4, v11

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 389
    .end local v8    # "delta_x":I
    .end local v9    # "delta_y":I
    .end local v22    # "point":[F
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 391
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v15    # "i":I
    .end local v23    # "rh":I
    .end local v25    # "rw":I
    :cond_17
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 392
    return-void
.end method

.method public onSurfaceTextureSizeChanged(II)V
    .locals 0
    .param p1, "uncroppedWidth"    # I
    .param p2, "uncroppedHeight"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mUncroppedWidth:I

    .line 112
    iput p2, p0, Lcom/android/camera/ui/FaceView;->mUncroppedHeight:I

    .line 113
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 191
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 195
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    .line 199
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 142
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CAM_FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    .line 203
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 5
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    const/4 v4, 0x1

    .line 116
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CAM_FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_5

    .line 119
    array-length v0, p1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-eqz v0, :cond_4

    :cond_3
    array-length v0, p1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 121
    :cond_4
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    .line 122
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-nez v0, :cond_1

    .line 123
    iput-boolean v4, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 129
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-eqz v0, :cond_6

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    :cond_6
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 134
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 3
    .param p1, "mirror"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 153
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CAM_FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 147
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 149
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 176
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 178
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 164
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 169
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 171
    return-void
.end method
