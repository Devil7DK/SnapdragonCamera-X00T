.class public interface abstract Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraOpenErrorCallback"
.end annotation


# virtual methods
.method public abstract onCameraDisabled(I)V
.end method

.method public abstract onDeviceOpenFailure(I)V
.end method

.method public abstract onReconnectionFailure(Lcom/android/camera/CameraManager;)V
.end method

.method public abstract onStartPreviewFailure(I)V
.end method
