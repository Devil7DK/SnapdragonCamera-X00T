.class Lcom/android/camera/AndroidCameraManagerImpl;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Lcom/android/camera/CameraManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;,
        Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;,
        Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;,
        Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;,
        Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;,
        Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;,
        Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;,
        Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;,
        Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;
    }
.end annotation


# static fields
.field private static final ADD_CALLBACK_BUFFER:I = 0x69

.field private static final AUTO_FOCUS:I = 0x12d

.field private static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CANCEL_AUTO_FOCUS:I = 0x12e

.field private static final ENABLE_SHUTTER_SOUND:I = 0x1f5

.field private static final GET_PARAMETERS:I = 0xca

.field private static final LOCK:I = 0x5

.field private static final OPEN_CAMERA:I = 0x1

.field private static final RECONNECT:I = 0x3

.field private static final REFRESH_PARAMETERS:I = 0xcb

.field private static final RELEASE:I = 0x2

.field private static final SEND_HISTOGRAM_DATA:I = 0x25a

.field private static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0x12f

.field private static final SET_AUTO_HDR_MODE:I = 0x321

.field private static final SET_DISPLAY_ORIENTATION:I = 0x1f6

.field private static final SET_ERROR_CALLBACK:I = 0x1d0

.field private static final SET_FACE_DETECTION_LISTENER:I = 0x1cd

.field private static final SET_HISTOGRAM_MODE:I = 0x259

.field private static final SET_LONGSHOT:I = 0x2bd

.field private static final SET_ONESHOT_PREVIEW_CALLBACK:I = 0x6c

.field private static final SET_PARAMETERS:I = 0xc9

.field private static final SET_PREVIEW_CALLBACK:I = 0x6b

.field private static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x68

.field private static final SET_PREVIEW_DISPLAY_ASYNC:I = 0x6a

.field private static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x65

.field private static final SET_ZOOM_CHANGE_LISTENER:I = 0x130

.field private static final SHOW_ERROR_DIALOG:I = 0x385

.field private static final START_FACE_DETECTION:I = 0x1ce

.field private static final START_PREVIEW_ASYNC:I = 0x66

.field private static final STOP_FACE_DETECTION:I = 0x1cf

.field private static final STOP_PREVIEW:I = 0x67

.field private static final TAG:Ljava/lang/String;

.field private static final UNLOCK:I = 0x4


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersIsDirty:Z

.field private mParamsToSet:Landroid/hardware/Camera$Parameters;

.field private mReconnectIOException:Ljava/io/IOException;

.field private mSig:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/camera/AndroidCameraManagerImpl;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/AndroidCameraManagerImpl;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mSig:Landroid/os/ConditionVariable;

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;-><init>(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCameraHandler:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/camera/AndroidCameraManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCameraHandler:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/AndroidCameraManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mParametersIsDirty:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mParametersIsDirty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/AndroidCameraManagerImpl;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mReconnectIOException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/AndroidCameraManagerImpl;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mReconnectIOException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mSig:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method


# virtual methods
.method public cameraOpen(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cameraId"    # I
    .param p3, "callback"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCameraHandler:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    .line 463
    invoke-static {p1, p3}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    .line 464
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCameraHandler:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCameraHandler:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    iget-object v4, v4, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    invoke-virtual {v0, v2, p2, v3, v4}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCameraHandler:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 467
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/camera/AndroidCameraManagerImpl;Lcom/android/camera/AndroidCameraManagerImpl$1;)V

    .line 470
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
