.class public Lcom/android/camera/util/GcamHelper;
.super Ljava/lang/Object;
.source "GcamHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGcamModule()Lcom/android/camera/CameraModule;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasGcamAsHDRMode()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public static hasGcamCapture()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 37
    return-void
.end method
