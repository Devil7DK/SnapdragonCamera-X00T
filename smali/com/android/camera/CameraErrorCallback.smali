.class public Lcom/android/camera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraErrorCallback"

.field private static final THERMAL_SHUTDOWN:I = 0x32


# instance fields
.field public mActivity:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 38
    const-string v1, "CameraErrorCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got camera error callback. error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v1, :cond_0

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 53
    const v0, 0x7f0e0235

    .line 56
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CameraErrorCallback$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CameraErrorCallback$1;-><init>(Lcom/android/camera/CameraErrorCallback;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    return-void

    .line 46
    .end local v0    # "resId":I
    :sswitch_0
    const v0, 0x7f0e0234

    .line 47
    .restart local v0    # "resId":I
    goto :goto_0

    .line 49
    .end local v0    # "resId":I
    :sswitch_1
    const v0, 0x7f0e0233

    .line 50
    .restart local v0    # "resId":I
    goto :goto_0

    .line 63
    .end local v0    # "resId":I
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public setActivity(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    .line 34
    return-void
.end method
