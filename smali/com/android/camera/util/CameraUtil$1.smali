.class final Lcom/android/camera/util/CameraUtil$1;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cameraId:I

.field final synthetic val$cb:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager$CameraOpenErrorCallback;I)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/camera/util/CameraUtil$1;->val$cb:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    iput p2, p0, Lcom/android/camera/util/CameraUtil$1;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/camera/util/CameraUtil$1;->val$cb:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    iget v1, p0, Lcom/android/camera/util/CameraUtil$1;->val$cameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;->onCameraDisabled(I)V

    .line 384
    return-void
.end method
