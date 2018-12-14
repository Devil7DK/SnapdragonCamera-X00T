.class public Lcom/android/camera/PanoCaptureModule;
.super Ljava/lang/Object;
.source "PanoCaptureModule.java"

# interfaces
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/PhotoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoCaptureModule$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final BAYER_CAMERA_ID:I = 0x0

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnapCam_PanoCaptureModule"

.field public static final TARGET_RATIO:F = 1.3333334f


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOpened:Z

.field private mCameraSensorOrientation:I

.field private mCameraThread:Landroid/os/HandlerThread;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

.field private mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

.field private mIsLockFocusAttempted:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mOrientation:I

.field private mOutputSize:Landroid/util/Size;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mSessionLock:Ljava/lang/Object;

.field private mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurfaceReady:Z

.field private mUI:Lcom/android/camera/PanoCaptureUI;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v1, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    .line 94
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 96
    iput-boolean v1, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mSessionLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    .line 118
    iput-boolean v1, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    .line 121
    new-instance v0, Lcom/android/camera/PanoCaptureModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoCaptureModule$1;-><init>(Lcom/android/camera/PanoCaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 157
    new-instance v0, Lcom/android/camera/PanoCaptureModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoCaptureModule$2;-><init>(Lcom/android/camera/PanoCaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoCaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/PanoCaptureModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/PanoCaptureModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoCaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/PanoCaptureUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/camera/PanoCaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/PanoCaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->createSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, "wasPreviousCameraOpenFailed":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    const-string v2, "SnapCam_PanoCaptureModule"

    const-string v3, "Time out waiting to lock camera closing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v1, 0x1

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 355
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 359
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 360
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 366
    if-eqz v1, :cond_3

    .line 367
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 370
    :cond_3
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while trying to lock camera closing."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 366
    if-eqz v1, :cond_4

    .line 367
    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    :cond_4
    throw v2
.end method

.method private closeSession()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureFrameProcessor;->clear()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    .line 201
    :cond_0
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createSession()V
    .locals 9

    .prologue
    .line 205
    iget-boolean v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    if-nez v4, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PanoCaptureModule;->mSessionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 207
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v3, 0x0

    .line 210
    .local v3, "surface":Landroid/view/Surface;
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/PanoCaptureUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 211
    .local v2, "sh":Landroid/view/SurfaceHolder;
    if-eqz v2, :cond_2

    .line 212
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 214
    :cond_2
    if-nez v3, :cond_3

    .line 215
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 266
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v2    # "sh":Landroid/view/SurfaceHolder;
    .end local v3    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 217
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .restart local v2    # "sh":Landroid/view/SurfaceHolder;
    .restart local v3    # "surface":Landroid/view/Surface;
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-nez v4, :cond_4

    .line 218
    new-instance v4, Lcom/android/camera/PanoCaptureFrameProcessor;

    iget-object v6, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    iget-object v7, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v8, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-direct {v4, v6, v7, v8, p0}, Lcom/android/camera/PanoCaptureFrameProcessor;-><init>(Landroid/util/Size;Landroid/app/Activity;Lcom/android/camera/PanoCaptureUI;Lcom/android/camera/PanoCaptureModule;)V

    iput-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    .line 221
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 223
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v6}, Lcom/android/camera/PanoCaptureFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 224
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 226
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x4

    .line 227
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 226
    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 228
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x2

    .line 229
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 228
    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 230
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 231
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v4}, Lcom/android/camera/PanoCaptureFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v6, Lcom/android/camera/PanoCaptureModule$3;

    invoke-direct {v6, p0}, Lcom/android/camera/PanoCaptureModule$3;-><init>(Lcom/android/camera/PanoCaptureModule;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v6, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    .end local v2    # "sh":Landroid/view/SurfaceHolder;
    :goto_1
    :try_start_4
    monitor-exit v5

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "SnapCam_PanoCaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSession: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 262
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "SnapCam_PanoCaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSession: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private getOutputSize(F[Landroid/util/Size;II)Landroid/util/Size;
    .locals 10
    .param p1, "ratio"    # F
    .param p2, "prevSizes"    # [Landroid/util/Size;
    .param p3, "screenW"    # I
    .param p4, "screenH"    # I

    .prologue
    const/4 v3, 0x0

    .line 325
    aget-object v0, p2, v3

    .line 326
    .local v0, "optimal":Landroid/util/Size;
    array-length v4, p2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, p2, v3

    .line 327
    .local v2, "prevSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 328
    .local v1, "prevRatio":F
    sub-float v5, v1, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    .line 329
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v5, p4, :cond_0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v5, p3, :cond_0

    .line 336
    .end local v1    # "prevRatio":F
    .end local v2    # "prevSize":Landroid/util/Size;
    :goto_1
    return-object v2

    .line 332
    .restart local v1    # "prevRatio":F
    .restart local v2    # "prevSize":Landroid/util/Size;
    :cond_0
    move-object v0, v2

    .line 326
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "prevRatio":F
    .end local v2    # "prevSize":Landroid/util/Size;
    :cond_2
    move-object v2, v0

    .line 336
    goto :goto_1
.end method

.method private lockFocus()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 707
    const-string v1, "SnapCam_PanoCaptureModule"

    const-string v2, "lockFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iput-boolean v3, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 711
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 712
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 713
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 714
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 715
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 717
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    .line 718
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 723
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 721
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private openCamera()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 399
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraId:Ljava/lang/String;

    .line 400
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    const-string v2, "SnapCam_PanoCaptureModule"

    const-string v3, "Time out waiting to lock camera opening."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 415
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SnapCam_PanoCaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "Can\'t open camera, please restart it"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 407
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "SnapCam_PanoCaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "Can\'t open camera, please restart it"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 411
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 412
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_2
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "SnapCam_PanoCaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUpCameraOutputs()V
    .locals 13

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 298
    .local v0, "activity":Landroid/app/Activity;
    const-string v9, "camera"

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager;

    .line 300
    .local v7, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v7}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "cameraIdList":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v1, v2, v9

    .line 302
    .local v1, "cameraId":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 303
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 305
    .local v8, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-nez v8, :cond_0

    .line 317
    .end local v1    # "cameraId":Ljava/lang/String;
    .end local v2    # "cameraIdList":[Ljava/lang/String;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_0
    return-void

    .line 308
    .restart local v1    # "cameraId":Ljava/lang/String;
    .restart local v2    # "cameraIdList":[Ljava/lang/String;
    .restart local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v8    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_0
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/camera/PanoCaptureModule;->mCameraSensorOrientation:I

    .line 309
    iget-object v9, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 310
    .local v4, "display":Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 311
    .local v5, "ds":Landroid/graphics/Point;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 312
    const v9, 0x3faaaaab

    const/16 v10, 0x23

    invoke-virtual {v8, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v10

    iget v11, v5, Landroid/graphics/Point;->x:I

    iget v12, v5, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/camera/PanoCaptureModule;->getOutputSize(F[Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    .line 313
    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v1    # "cameraId":Ljava/lang/String;
    .end local v2    # "cameraIdList":[Ljava/lang/String;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "ds":Landroid/graphics/Point;
    .end local v8    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :catch_0
    move-exception v6

    .line 315
    .local v6, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v9, "SnapCam_PanoCaptureModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setUpCameraOutputs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 376
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 377
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 378
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 379
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 497
    if-nez p0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->addGpsTags(DD)Z

    .line 501
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    goto :goto_0
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public changePanoStatus(ZZ)V
    .locals 1
    .param p1, "newStatus"    # Z
    .param p2, "isCancelling"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoCaptureUI;->onPanoStatusChange(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PanoCaptureFrameProcessor;->changePanoStatus(ZZ)V

    .line 287
    :cond_0
    return-void
.end method

.method public enableRecordingLocation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 607
    return-void
.end method

.method public getCameraSensorOrientation()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraSensorOrientation:I

    return v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public getPictureOutputSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    return-object v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 271
    iput-boolean v1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    .line 273
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 274
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    .line 275
    .local v0, "settingsManager":Lcom/android/camera/SettingsManager;
    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->init()V

    .line 276
    new-instance v1, Lcom/android/camera/PanoCaptureUI;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/camera/PanoCaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoCaptureModule;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    .line 277
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 278
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 280
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public isCameraIdle()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public isPanoActive()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureFrameProcessor;->isPanoActive()Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 512
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureCancelled()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method public onCaptureDone()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public onCaptureRetake()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 454
    return-void
.end method

.method public onCountDownFinished()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 663
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 646
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget v1, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v0

    .line 649
    .local v0, "newOrientation":I
    iget v1, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    if-eq v1, v0, :cond_0

    .line 650
    iput v0, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    .line 651
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/PanoCaptureUI;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->stopBackgroundThread()V

    .line 430
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->closeCamera()V

    .line 431
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->onPause()V

    .line 432
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/PanoCaptureUI;->applySurfaceChange(IZ)V

    .line 425
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 0
    .param p1, "previewFocused"    # Z

    .prologue
    .line 420
    return-void
.end method

.method public onPreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 597
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->closeSession()V

    .line 622
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    .line 616
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->createSession()V

    .line 617
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->onResume()V

    .line 442
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->openCamera()V

    .line 443
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->setUpCameraOutputs()V

    .line 444
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PanoCaptureUI;->applySurfaceChange(IZ)V

    .line 445
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoCaptureUI;->setLayout(Landroid/util/Size;)V

    .line 446
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->startBackgroundThread()V

    .line 447
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoCaptureUI;->enableShutter(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->initializeShutterButton()V

    .line 449
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 592
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 695
    iget v0, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/android/camera/PanoCaptureModule;->isPanoActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/PanoCaptureModule;->changePanoStatus(ZZ)V

    goto :goto_0

    .line 701
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->lockFocus()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 688
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 582
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 1
    .param p1, "requestedZoom"    # I

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomChanged(F)V
    .locals 0
    .param p1, "requestedZoom"    # F

    .prologue
    .line 537
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public savePanorama([BIII)Landroid/net/Uri;
    .locals 13
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 469
    .local v2, "timeTaken":J
    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 471
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e03c4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0, v2, v3}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "filename":Ljava/lang/String;
    const-string v0, "jpeg"

    invoke-static {v1, v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "filepath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 476
    .local v4, "loc":Landroid/location/Location;
    new-instance v12, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v12}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 478
    .local v12, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v12, p1}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 479
    invoke-virtual {v12, v2, v3}, Lcom/android/camera/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 480
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 481
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 480
    invoke-virtual {v12, v0, v2, v3, v5}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 482
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v0, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 483
    invoke-static {v4, v12}, Lcom/android/camera/PanoCaptureModule;->writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V

    .line 484
    invoke-virtual {v12, p1, v7}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v6, v8

    .line 490
    .local v6, "jpegLength":I
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "image/jpeg"

    move/from16 v5, p4

    move v8, p2

    move/from16 v9, p3

    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 493
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v6    # "jpegLength":I
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v12    # "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_1
    return-object v0

    .line 485
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v4    # "loc":Landroid/location/Location;
    .restart local v7    # "filepath":Ljava/lang/String;
    .restart local v12    # "exif":Lcom/android/camera/exif/ExifInterface;
    :catch_0
    move-exception v11

    .line 486
    .local v11, "e":Ljava/io/IOException;
    const-string v0, "SnapCam_PanoCaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set exif for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    invoke-static {v7, p1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0

    .line 493
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "exif":Lcom/android/camera/exif/ExifInterface;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 611
    return-void
.end method

.method public stopPreview()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public switchInternalStorage()V
    .locals 4

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    .line 756
    .local v0, "mPreferences":Lcom/android/camera/ComboPreferences;
    if-nez v0, :cond_0

    .line 757
    new-instance v0, Lcom/android/camera/ComboPreferences;

    .end local v0    # "mPreferences":Lcom/android/camera/ComboPreferences;
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 759
    .restart local v0    # "mPreferences":Lcom/android/camera/ComboPreferences;
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 760
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 761
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 762
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 763
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 764
    return-void
.end method

.method public unlockFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 726
    iget-boolean v1, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    if-nez v1, :cond_0

    .line 745
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string v1, "SnapCam_PanoCaptureModule"

    const-string v2, "unlockFocus "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 732
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 733
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 734
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 735
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 736
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 738
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    .line 739
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 744
    :goto_1
    iput-boolean v5, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 742
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public updateCameraOrientation()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 0
    .param p1, "waiting"    # Z

    .prologue
    .line 683
    return-void
.end method
