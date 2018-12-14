.class public Lcom/android/camera/MultiPPManager;
.super Ljava/lang/Object;
.source "MultiPPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MultiPPManager$MainHandler;,
        Lcom/android/camera/MultiPPManager$ProcessThread;,
        Lcom/android/camera/MultiPPManager$PostProcCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_MODE:Z = false

.field public static final FEATURE_BOKEH:I = 0x10

.field public static final FEATURE_FACEBEAUTY:I = 0x8

.field public static final FEATURE_HDR:I = 0x1

.field public static final FEATURE_NS:I = 0x2

.field public static final FEATURE_PIXZOOM:I = 0x4

.field public static final FEATURE_PORTRAIT:I = 0x20

.field public static final FRAME_NUM_HDR:I = 0x3

.field public static final FRAME_NUM_NS:I = 0x4

.field public static final FRAME_NUM_PIXZOOM:I = 0x4

.field private static final MSG_FINISH_JOB:I = 0x64

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_IN_CAPTURE:I = 0x1

.field private static final STATE_PROCESSING:I = 0x2

.field private static final STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CAM_MultiPPManager"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBSEngine:Lcom/android/camera/BeautyShot;

.field private mFeatureMask:I

.field private mFrameBuffer:[B

.field private final mHandler:Landroid/os/Handler;

.field private mInited:Z

.field private mInputHeight:I

.field private mInputWidth:I

.field private mMultiFrameAlgoEnable:Z

.field private mNSEngine:Lcom/android/camera/NightShot;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

.field private mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

.field private mReceivedNum:I

.field private mRet:I

.field private mShotNum:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 92
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 94
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mRet:I

    .line 95
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 96
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 97
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 106
    new-instance v0, Lcom/android/camera/MultiPPManager$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/MultiPPManager$MainHandler;-><init>(Lcom/android/camera/MultiPPManager;)V

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mHandler:Landroid/os/Handler;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/MultiPPManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/MultiPPManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/MultiPPManager;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/MultiPPManager$PostProcCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MultiPPManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/MultiPPManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/MultiPPManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p1, "x1"    # [B

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/NightShot;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/BeautyShot;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/MultiPPManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    return v0
.end method

.method private cleanAllEngines()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v0}, Lcom/android/camera/NightShot;->deinit()V

    .line 390
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v0}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 394
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 396
    :cond_1
    return-void
.end method

.method private isDebugMode()Z
    .locals 2

    .prologue
    .line 399
    const-string v0, "persist.camera.ppmanager.debug"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processInThread()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/camera/MultiPPManager$ProcessThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/MultiPPManager$ProcessThread;-><init>(Lcom/android/camera/MultiPPManager;Lcom/android/camera/MultiPPManager$1;)V

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    .line 276
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/MultiPPManager$ProcessThread;->start()V

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public addSourceFrame([B)Z
    .locals 6
    .param p1, "frame"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    iget-boolean v4, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    if-nez v4, :cond_0

    .line 226
    const-string v3, "CAM_MultiPPManager"

    const-string v4, "Not Inited!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return v2

    .line 229
    :cond_0
    iput v3, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 230
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard/DCIM/Camera/PP_INPUT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Num-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nv21"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "raw":Ljava/io/File;
    if-nez v1, :cond_1

    .line 233
    const-string v4, "CAM_MultiPPManager"

    const-string v5, "Destination file path invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v0, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 238
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v1    # "raw":Ljava/io/File;
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    if-eqz v4, :cond_8

    .line 243
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_5

    .line 250
    :cond_3
    :goto_2
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    if-nez v4, :cond_4

    .line 251
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 253
    :cond_4
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 254
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    if-lt v4, v5, :cond_7

    .line 255
    const-string v2, "CAM_MultiPPManager"

    const-string v4, "Got enough frames, can do process"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    move v2, v3

    .line 257
    goto :goto_0

    .line 245
    :cond_5
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_6

    .line 246
    iget-object v4, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v4, p1}, Lcom/android/camera/NightShot;->addSourceImage([B)I

    goto :goto_2

    .line 247
    :cond_6
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_3

    goto :goto_2

    .line 259
    :cond_7
    const-string v3, "CAM_MultiPPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got frame No."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    :cond_8
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 264
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    move v2, v3

    .line 265
    goto/16 :goto_0

    .line 239
    .restart local v1    # "raw":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public cancelFeature(I)Z
    .locals 5
    .param p1, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 357
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 358
    const-string v1, "CAM_MultiPPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No support mask in current capture can be canceled, mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFeatureMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    return v0

    .line 361
    :cond_0
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 362
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "No support mask in current capture can be canceled, mask="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_1
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 366
    const-string v2, "CAM_MultiPPManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now mFeatureMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 368
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 370
    :cond_2
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    if-lt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    if-nez v0, :cond_3

    .line 371
    const-string v0, "CAM_MultiPPManager"

    const-string v2, "multi-frame mask canceled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    if-eqz v0, :cond_4

    .line 373
    iput v1, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 374
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    :cond_3
    :goto_1
    move v0, v1

    .line 379
    goto :goto_0

    .line 376
    :cond_4
    const-string v0, "CAM_MultiPPManager"

    const-string v2, "ALL mask canceled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deinit()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/MultiPPManager$ProcessThread;->join()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 291
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 294
    :cond_1
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v0}, Lcom/android/camera/NightShot;->deinit()V

    .line 297
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 300
    :cond_2
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_3

    .line 303
    :cond_3
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_4

    .line 306
    :cond_4
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_5

    .line 309
    :cond_5
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_6

    .line 310
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v0, :cond_6

    .line 311
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v0}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 312
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 316
    :cond_6
    iput v2, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 319
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNumOfShot()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 216
    :cond_0
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    return v0
.end method

.method public getOutputSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v2, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 221
    .local v0, "s":Landroid/util/Size;
    return-object v0
.end method

.method public getResult()[B
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object v0
.end method

.method public init(Lcom/android/camera/CameraActivity;III)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "featureMask"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 110
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 111
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/MultiPPManager;->reset(III)Z

    .line 112
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 113
    return v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    return v0
.end method

.method public reset(III)Z
    .locals 11
    .param p1, "featureMask"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string v7, "CAM_MultiPPManager"

    const-string v8, "No feature set, return"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v7, 0x0

    .line 209
    :goto_0
    return v7

    .line 125
    :cond_0
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    if-eqz v7, :cond_1

    .line 127
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v7}, Lcom/android/camera/MultiPPManager$ProcessThread;->join()V

    .line 128
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :cond_1
    :goto_1
    and-int/lit8 v7, p1, 0x1

    and-int/lit8 v8, p1, 0x2

    add-int/2addr v7, v8

    and-int/lit8 v8, p1, 0x4

    add-int/lit8 v8, v8, 0x1

    shr-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 136
    const-string v7, "CAM_MultiPPManager"

    const-string v8, "more than one multi-frame algo set, return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v7, 0x0

    goto :goto_0

    .line 138
    :cond_2
    and-int/lit8 v7, p1, 0x1

    and-int/lit8 v8, p1, 0x2

    add-int/2addr v7, v8

    and-int/lit8 v8, p1, 0x4

    add-int/2addr v7, v8

    if-nez v7, :cond_b

    .line 139
    const-string v7, "CAM_MultiPPManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No multi-frame algo set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 141
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 146
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->cleanAllEngines()V

    .line 147
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 148
    iput p1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 149
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    if-ne v7, p2, :cond_3

    iget v7, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    if-eq v7, p3, :cond_4

    .line 150
    :cond_3
    iput p2, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    .line 151
    iput p3, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    .line 153
    :cond_4
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_c

    .line 154
    shl-int/lit8 v7, p2, 0x1

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    .line 155
    shl-int/lit8 v7, p3, 0x1

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    .line 160
    :goto_3
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_5

    .line 161
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 165
    :cond_5
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_d

    .line 166
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 167
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-nez v7, :cond_6

    .line 168
    new-instance v7, Lcom/android/camera/NightShot;

    invoke-direct {v7}, Lcom/android/camera/NightShot;-><init>()V

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 170
    :cond_6
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    iget v8, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    iget v9, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/NightShot;->init(II)V

    .line 177
    :cond_7
    :goto_4
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_8

    .line 178
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 183
    :cond_8
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x8

    if-lez v7, :cond_f

    .line 184
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-nez v7, :cond_9

    .line 185
    new-instance v7, Lcom/android/camera/BeautyShot;

    invoke-direct {v7}, Lcom/android/camera/BeautyShot;-><init>()V

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 188
    :cond_9
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 189
    .local v0, "assetFiles":Landroid/content/res/AssetManager;
    const-string v7, "style.cng"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 190
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v6, "swapStream":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x64

    new-array v1, v7, [B

    .line 192
    .local v1, "buff":[B
    const/4 v4, 0x0

    .line 193
    .local v4, "rc":I
    :goto_5
    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual {v3, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_e

    .line 194
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 198
    .end local v0    # "assetFiles":Landroid/content/res/AssetManager;
    .end local v1    # "buff":[B
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "rc":I
    .end local v6    # "swapStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CAM_MultiPPManager"

    const-string v8, "copy file error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    iget v8, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v9, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/camera/BeautyShot;->init(II[B)V

    .line 208
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_6
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 209
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string v7, "CAM_MultiPPManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multi-frame algo set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    goto/16 :goto_2

    .line 157
    :cond_c
    iput p2, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    .line 158
    iput p3, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    goto/16 :goto_3

    .line 172
    :cond_d
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-eqz v7, :cond_7

    .line 173
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v7}, Lcom/android/camera/NightShot;->deinit()V

    .line 174
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    goto/16 :goto_4

    .line 196
    .restart local v0    # "assetFiles":Landroid/content/res/AssetManager;
    .restart local v1    # "buff":[B
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "rc":I
    .restart local v6    # "swapStream":Ljava/io/ByteArrayOutputStream;
    :cond_e
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 197
    .local v5, "style":[B
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    iget v8, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v9, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    invoke-virtual {v7, v8, v9, v5}, Lcom/android/camera/BeautyShot;->init(II[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 203
    .end local v0    # "assetFiles":Landroid/content/res/AssetManager;
    .end local v1    # "buff":[B
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "rc":I
    .end local v5    # "style":[B
    .end local v6    # "swapStream":Ljava/io/ByteArrayOutputStream;
    :cond_f
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v7, :cond_a

    .line 204
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v7}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 205
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    goto :goto_6

    .line 129
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method public varargs setParams(I[I)Z
    .locals 11
    .param p1, "mask"    # I
    .param p2, "args"    # [I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 323
    const-string v1, "CAM_MultiPPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No support mask in current capture, mask="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mFeatureMask="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return v3

    .line 326
    :cond_0
    array-length v0, p2

    .line 327
    .local v0, "length":I
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_1

    .line 330
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_3

    .line 331
    if-ge v0, v10, :cond_2

    .line 332
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "Invalid NS params"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_2
    iget-object v4, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    aget v5, p2, v3

    aget v6, p2, v2

    aget v7, p2, v8

    aget v1, p2, v9

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/camera/NightShot;->setParams(IIIZ)V

    .line 337
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_4

    .line 340
    :cond_4
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_5

    .line 343
    :cond_5
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_6

    .line 346
    :cond_6
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_9

    .line 347
    if-ge v0, v10, :cond_8

    .line 348
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "Invalid FB params"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v1, v3

    .line 335
    goto :goto_1

    .line 351
    :cond_8
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    aget v3, p2, v3

    aget v4, p2, v2

    aget v5, p2, v8

    aget v6, p2, v9

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/camera/BeautyShot;->setParams(IIII)V

    :cond_9
    move v3, v2

    .line 353
    goto :goto_0
.end method

.method public final setPostProcCallback(Lcom/android/camera/MultiPPManager$PostProcCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/camera/MultiPPManager$PostProcCallback;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

    .line 385
    return-void
.end method
