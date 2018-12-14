.class public Lcom/android/camera/ui/Camera2FaceView;
.super Lcom/android/camera/ui/FaceView;
.source "Camera2FaceView.java"


# instance fields
.field private final blink_threshold:I

.field private mCameraBound:Landroid/graphics/Rect;

.field private mExFaces:[Lcom/android/camera/ExtendedFace;

.field private mFaces:[Landroid/hardware/camera2/params/Face;

.field private mHandler:Landroid/os/Handler;

.field private mPendingExFaces:[Lcom/android/camera/ExtendedFace;

.field private mPendingFaces:[Landroid/hardware/camera2/params/Face;

.field private mZoom:F

.field private final smile_threashold_no_smile:I

.field private final smile_threashold_small_smile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x3c

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->smile_threashold_no_smile:I

    .line 47
    iput v1, p0, Lcom/android/camera/ui/Camera2FaceView;->smile_threashold_small_smile:I

    .line 48
    iput v1, p0, Lcom/android/camera/ui/Camera2FaceView;->blink_threshold:I

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    .line 56
    new-instance v0, Lcom/android/camera/ui/Camera2FaceView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/Camera2FaceView$1;-><init>(Lcom/android/camera/ui/Camera2FaceView;)V

    iput-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/Camera2FaceView;[Landroid/hardware/camera2/params/Face;)[Landroid/hardware/camera2/params/Face;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/Camera2FaceView;)[Landroid/hardware/camera2/params/Face;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingFaces:[Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/Camera2FaceView;[Lcom/android/camera/ExtendedFace;)[Lcom/android/camera/ExtendedFace;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;
    .param p1, "x1"    # [Lcom/android/camera/ExtendedFace;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/Camera2FaceView;)[Lcom/android/camera/ExtendedFace;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingExFaces:[Lcom/android/camera/ExtendedFace;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    iget v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mColor:I

    .line 337
    iput-object v1, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 338
    iput-object v1, p0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 339
    invoke-virtual {p0}, Lcom/android/camera/ui/Camera2FaceView;->invalidate()V

    .line 340
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mBlocked:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v2, v2

    if-lez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    if-eqz v2, :cond_19

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/Camera2FaceView;->mUncroppedWidth:I

    move/from16 v33, v0

    .line 113
    .local v33, "rw":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/Camera2FaceView;->mUncroppedHeight:I

    move/from16 v31, v0

    .line 114
    .local v31, "rh":I
    move/from16 v0, v31

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    :cond_0
    move/from16 v0, v33

    move/from16 v1, v31

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_2

    .line 116
    :cond_1
    move/from16 v34, v33

    .line 117
    .local v34, "temp":I
    move/from16 v33, v31

    .line 118
    move/from16 v31, v34

    .line 120
    .end local v34    # "temp":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mMirror:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    move/from16 v0, v33

    move/from16 v1, v31

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 124
    new-instance v35, Landroid/graphics/Matrix;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .local v35, "translateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 126
    const/high16 v2, 0x44fa0000    # 2000.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x44fa0000    # 2000.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 128
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    .local v8, "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    mul-float/2addr v3, v4

    .line 129
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 131
    const/high16 v2, 0x44fa0000    # 2000.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x44fa0000    # 2000.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    .line 132
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 131
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Camera2FaceView;->getWidth()I

    move-result v2

    sub-int v2, v2, v33

    div-int/lit8 v12, v2, 0x2

    .line 135
    .local v12, "dx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Camera2FaceView;->getHeight()I

    move-result v2

    sub-int v2, v2, v31

    div-int/lit8 v13, v2, 0x2

    .line 139
    .local v13, "dy":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 141
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 146
    const/4 v15, 0x0

    .line 147
    .local v15, "extendFaceSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    if-nez v2, :cond_4

    const/4 v15, 0x0

    .line 148
    :goto_0
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v2, v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_18

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_5

    .line 148
    :cond_3
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 147
    .end local v21    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    array-length v15, v2

    goto :goto_0

    .line 150
    .restart local v21    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    .line 151
    .local v17, "faceBound":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 154
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/Camera2FaceView;->LOGV:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    const-string v3, "Original rect"

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 155
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 156
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/Camera2FaceView;->LOGV:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    const-string v3, "Transformed rect"

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 157
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v12

    int-to-float v4, v13

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v29, v2, v3

    .line 161
    .local v29, "rectHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v30, v2, v3

    .line 162
    .local v30, "rectWidth":F
    cmpl-float v2, v29, v30

    if-lez v2, :cond_11

    move/from16 v11, v30

    .line 164
    .local v11, "diameter":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 166
    move/from16 v0, v21

    if-ge v0, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    aget-object v2, v2, v21

    if-eqz v2, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    aget-object v14, v2, v21

    .line 168
    .local v14, "exFace":Lcom/android/camera/ExtendedFace;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v16, v2, v21

    .line 169
    .local v16, "face":Landroid/hardware/camera2/params/Face;
    const/4 v2, 0x4

    new-array v0, v2, [F

    move-object/from16 v28, v0

    .line 170
    .local v28, "point":[F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v9, v2, 0xc

    .line 171
    .local v9, "delta_x":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v10, v2, 0xc

    .line 173
    .local v10, "delta_y":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 174
    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    mul-float/2addr v2, v3

    float-to-int v10, v2

    .line 176
    const-string v2, "CAM_FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blink: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getLeyeBlink()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getReyeBlink()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_12

    .line 181
    :cond_8
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 182
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v10, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 183
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 184
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v10, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 191
    :goto_4
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 193
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getLeyeBlink()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_9

    .line 194
    const/4 v2, 0x0

    aget v2, v28, v2

    int-to-float v3, v12

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v28, v2

    int-to-float v4, v13

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v28, v2

    int-to-float v5, v12

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v28, v2

    int-to-float v6, v13

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_13

    .line 201
    :cond_a
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 202
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v10, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 203
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 204
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v10, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 211
    :goto_5
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 213
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getReyeBlink()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_b

    .line 215
    const/4 v2, 0x0

    aget v2, v28, v2

    int-to-float v3, v12

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v28, v2

    int-to-float v4, v13

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v28, v2

    int-to-float v5, v12

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v28, v2

    int-to-float v6, v13

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    :cond_b
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getLeftrightGaze()I

    move-result v2

    if-nez v2, :cond_c

    .line 221
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getTopbottomGaze()I

    move-result v2

    if-eqz v2, :cond_10

    .line 224
    :cond_c
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    .line 225
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    .line 226
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    .line 227
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v22, v2, v4

    .line 228
    .local v22, "length":D
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getLeftrightGaze()I

    move-result v2

    neg-int v2, v2

    int-to-double v0, v2

    move-wide/from16 v26, v0

    .line 229
    .local v26, "nGazeYaw":D
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getTopbottomGaze()I

    move-result v2

    neg-int v2, v2

    int-to-double v0, v2

    move-wide/from16 v24, v0

    .line 230
    .local v24, "nGazePitch":D
    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v2, v26, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    .line 231
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    .line 232
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

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

    div-double v4, v24, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 234
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v6, v26, v6

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v36

    .line 235
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 236
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v6

    neg-int v6, v6

    int-to-double v6, v6

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v6, v6, v36

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v36

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide/from16 v0, v22

    neg-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v19, v0

    .line 239
    .local v19, "gazeRollX":F
    move-wide/from16 v0, v26

    neg-double v2, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    .line 240
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 241
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

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

    div-double v4, v24, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 243
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v6, v26, v6

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v36

    .line 244
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 245
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v6

    neg-int v6, v6

    int-to-double v6, v6

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v6, v6, v36

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v36

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    move-wide/from16 v0, v22

    neg-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v20, v0

    .line 249
    .local v20, "gazeRollY":F
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getLeyeBlink()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_e

    .line 250
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_14

    .line 252
    :cond_d
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 253
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 254
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float v3, v3, v19

    aput v3, v28, v2

    .line 255
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float v3, v3, v20

    aput v3, v28, v2

    .line 262
    :goto_6
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 264
    const/4 v2, 0x0

    aget v2, v28, v2

    int-to-float v3, v12

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v28, v2

    int-to-float v4, v13

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v28, v2

    int-to-float v5, v12

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v28, v2

    int-to-float v6, v13

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 268
    :cond_e
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getReyeBlink()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_10

    .line 269
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_15

    .line 271
    :cond_f
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 272
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 273
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float v3, v3, v19

    aput v3, v28, v2

    .line 274
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float v3, v3, v20

    aput v3, v28, v2

    .line 281
    :goto_7
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 283
    const/4 v2, 0x0

    aget v2, v28, v2

    int-to-float v3, v12

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v28, v2

    int-to-float v4, v13

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v28, v2

    int-to-float v5, v12

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v28, v2

    int-to-float v6, v13

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    .end local v19    # "gazeRollX":F
    .end local v20    # "gazeRollY":F
    .end local v22    # "length":D
    .end local v24    # "nGazePitch":D
    .end local v26    # "nGazeYaw":D
    :cond_10
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 289
    const-string v2, "CAM_FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getSmileDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getSmileConfidence()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getSmileDegree()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_16

    .line 292
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v12

    sub-int/2addr v3, v9

    int-to-float v3, v3

    aput v3, v28, v2

    .line 293
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 294
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v12

    add-int/2addr v3, v9

    int-to-float v3, v3

    aput v3, v28, v2

    .line 295
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 296
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 297
    .local v18, "faceMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v2

    int-to-float v2, v2

    .line 298
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    .line 297
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 299
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 300
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 302
    const/4 v2, 0x0

    aget v2, v28, v2

    int-to-float v3, v12

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v28, v2

    int-to-float v4, v13

    add-float/2addr v4, v2

    const/4 v2, 0x2

    aget v2, v28, v2

    int-to-float v5, v12

    add-float/2addr v5, v2

    const/4 v2, 0x3

    aget v2, v28, v2

    int-to-float v6, v13

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .end local v9    # "delta_x":I
    .end local v10    # "delta_y":I
    .end local v11    # "diameter":F
    .end local v14    # "exFace":Lcom/android/camera/ExtendedFace;
    .end local v16    # "face":Landroid/hardware/camera2/params/Face;
    .end local v18    # "faceMatrix":Landroid/graphics/Matrix;
    .end local v28    # "point":[F
    :cond_11
    move/from16 v11, v29

    .line 162
    goto/16 :goto_3

    .line 186
    .restart local v9    # "delta_x":I
    .restart local v10    # "delta_y":I
    .restart local v11    # "diameter":F
    .restart local v14    # "exFace":Lcom/android/camera/ExtendedFace;
    .restart local v16    # "face":Landroid/hardware/camera2/params/Face;
    .restart local v28    # "point":[F
    :cond_12
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 187
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 188
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 189
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    goto/16 :goto_4

    .line 206
    :cond_13
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 207
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 208
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v28, v2

    .line 209
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    goto/16 :goto_5

    .line 257
    .restart local v19    # "gazeRollX":F
    .restart local v20    # "gazeRollY":F
    .restart local v22    # "length":D
    .restart local v24    # "nGazePitch":D
    .restart local v26    # "nGazeYaw":D
    :cond_14
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 258
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 259
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float v3, v3, v20

    aput v3, v28, v2

    .line 260
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float v3, v3, v19

    aput v3, v28, v2

    goto/16 :goto_6

    .line 276
    :cond_15
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 277
    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v28, v2

    .line 278
    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float v3, v3, v20

    aput v3, v28, v2

    .line 279
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float v3, v3, v19

    aput v3, v28, v2

    goto/16 :goto_7

    .line 304
    .end local v19    # "gazeRollX":F
    .end local v20    # "gazeRollY":F
    .end local v22    # "length":D
    .end local v24    # "nGazePitch":D
    .end local v26    # "nGazeYaw":D
    :cond_16
    invoke-virtual {v14}, Lcom/android/camera/ExtendedFace;->getSmileDegree()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_17

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    rsub-int v0, v2, 0x168

    move/from16 v32, v0

    .line 307
    .local v32, "rotation_mouth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    .line 308
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v10

    int-to-float v4, v4

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    .line 309
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v10

    int-to-float v6, v6

    .line 307
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v12

    int-to-float v4, v13

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    move/from16 v0, v32

    int-to-float v4, v0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 316
    .end local v32    # "rotation_mouth":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    .line 317
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v10

    int-to-float v4, v4

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    .line 318
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v10

    int-to-float v6, v6

    .line 316
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v12

    int-to-float v4, v13

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 327
    .end local v9    # "delta_x":I
    .end local v10    # "delta_y":I
    .end local v11    # "diameter":F
    .end local v14    # "exFace":Lcom/android/camera/ExtendedFace;
    .end local v16    # "face":Landroid/hardware/camera2/params/Face;
    .end local v17    # "faceBound":Landroid/graphics/Rect;
    .end local v28    # "point":[F
    .end local v29    # "rectHeight":F
    .end local v30    # "rectWidth":F
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    .end local v8    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v15    # "extendFaceSize":I
    .end local v21    # "i":I
    .end local v31    # "rh":I
    .end local v33    # "rw":I
    .end local v35    # "translateMatrix":Landroid/graphics/Matrix;
    :cond_19
    invoke-super/range {p0 .. p1}, Lcom/android/camera/ui/FaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 330
    return-void
.end method

.method public setCameraBound(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "cameraBound"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    .line 76
    return-void
.end method

.method public setFaces([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 5
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "extendedFaces"    # [Lcom/android/camera/ExtendedFace;

    .prologue
    const/4 v4, 0x1

    .line 83
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->LOGV:Z

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

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mPause:Z

    if-eqz v0, :cond_2

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_5

    .line 86
    array-length v0, p1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v0, v0

    if-eqz v0, :cond_4

    :cond_3
    array-length v0, p1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 88
    :cond_4
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingFaces:[Landroid/hardware/camera2/params/Face;

    .line 89
    iput-object p2, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingExFaces:[Lcom/android/camera/ExtendedFace;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    if-nez v0, :cond_1

    .line 91
    iput-boolean v4, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 97
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    if-eqz v0, :cond_6

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    :cond_6
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 102
    iput-object p2, p0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 103
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mBlocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ui/Camera2FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    .line 80
    return-void
.end method
