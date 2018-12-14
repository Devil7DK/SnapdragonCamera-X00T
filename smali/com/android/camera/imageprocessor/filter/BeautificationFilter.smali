.class public Lcom/android/camera/imageprocessor/filter/BeautificationFilter;
.super Ljava/lang/Object;
.source "BeautificationFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field private static FACE_TIMEOUT_VALUE:I

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mFaceTimeOut:I

.field mHeight:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field mStrideVU:I

.field mStrideY:I

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string v1, "BeautificationFilter"

    sput-object v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    .line 57
    sput-boolean v2, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    .line 58
    const/16 v1, 0x3c

    sput v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->FACE_TIMEOUT_VALUE:I

    .line 173
    :try_start_0
    const-string v1, "jni_makeupV2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 175
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->FACE_TIMEOUT_VALUE:I

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    .line 62
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 63
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeBeautificationProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIII)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 20
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "isPreview"    # Ljava/lang/Object;

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getCameraRegion()Landroid/graphics/Rect;

    move-result-object v13

    .local v13, "back":Landroid/graphics/Rect;
    move-object/from16 v1, p4

    .line 97
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getPreviewFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v14

    .line 99
    .local v14, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v14, :cond_0

    array-length v1, v14

    if-nez v1, :cond_3

    .line 100
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    if-lez v1, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getStickyFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v14

    .line 102
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    .line 110
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v19, v1, v2

    .line 111
    .local v19, "widthRatio":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v15, v1, v2

    .line 112
    .local v15, "heightRatio":F
    if-eqz v14, :cond_2

    array-length v1, v14

    if-nez v1, :cond_5

    .line 136
    .end local p4    # "isPreview":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void

    .line 105
    .end local v15    # "heightRatio":F
    .end local v19    # "widthRatio":F
    .restart local p4    # "isPreview":Ljava/lang/Object;
    :cond_3
    sget v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->FACE_TIMEOUT_VALUE:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    goto :goto_0

    .line 108
    .end local v14    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getStickyFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v14

    .restart local v14    # "faces":[Landroid/hardware/camera2/params/Face;
    goto :goto_0

    .line 115
    .restart local v15    # "heightRatio":F
    .restart local v19    # "widthRatio":F
    :cond_5
    const/4 v1, 0x0

    aget-object v1, v14, v1

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 116
    .local v16, "rect":Landroid/graphics/Rect;
    const/16 v11, 0x64

    .line 118
    .local v11, "strengthValue":I
    :try_start_0
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_makeup_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 119
    .local v17, "str":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 122
    .end local v17    # "str":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mStrideY:I

    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float v1, v1, v19

    float-to-int v7, v1

    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v8, v1

    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float v1, v1, v19

    float-to-int v9, v1

    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v10, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v12, v11

    invoke-direct/range {v1 .. v12}, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->nativeBeautificationProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIII)I

    move-result v18

    .line 125
    .local v18, "value":I
    sget-boolean v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 126
    const/4 v1, -0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_7

    .line 127
    sget-object v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    const-string v2, "library initialization is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_6
    :goto_3
    if-ltz v18, :cond_2

    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "isPreview":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    sget-object v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successful beautification at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " widthRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " heightRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Strength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 128
    .restart local p4    # "isPreview":Ljava/lang/Object;
    :cond_7
    const/4 v1, -0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_6

    .line 129
    sget-object v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    const-string v2, "No face is recognized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 120
    .end local v18    # "value":I
    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method public deinit()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "BeautificationFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mWidth:I

    .line 83
    iput p2, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mHeight:I

    .line 84
    iput p3, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mStrideY:I

    .line 85
    iput p4, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mStrideVU:I

    .line 86
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 166
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 1
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
