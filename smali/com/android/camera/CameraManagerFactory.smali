.class public Lcom/android/camera/CameraManagerFactory;
.super Ljava/lang/Object;
.source "CameraManagerFactory.java"


# static fields
.field private static sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAndroidCameraManager()Lcom/android/camera/CameraManager;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/android/camera/CameraManagerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraManagerFactory;->sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-direct {v0}, Lcom/android/camera/AndroidCameraManagerImpl;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManagerFactory;->sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;

    .line 35
    :cond_0
    sget-object v0, Lcom/android/camera/CameraManagerFactory;->sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
