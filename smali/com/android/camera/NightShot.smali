.class public Lcom/android/camera/NightShot;
.super Ljava/lang/Object;
.source "NightShot.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "mpbase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v0, "arcsoft_night_shot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v0, "jni_hq_night_shot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native addSourceImage([B)I
.end method

.method public native deinit()V
.end method

.method public native init(II)V
.end method

.method public native setParams(IIIZ)V
.end method

.method public native startProcess()[B
.end method
