.class public Lorg/codeaurora/snapcam/wrapper/CameraWrapper;
.super Lorg/codeaurora/snapcam/wrapper/Wrapper;
.source "CameraWrapper.java"


# static fields
.field private static method_sendHistogramData:Ljava/lang/reflect/Method;

.field private static method_setHistogramMode:Ljava/lang/reflect/Method;

.field private static method_setLongshot:Ljava/lang/reflect/Method;

.field private static method_setMetadataCb:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    .line 71
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    .line 88
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    .line 104
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/codeaurora/snapcam/wrapper/Wrapper;-><init>()V

    return-void
.end method

.method public static final sendHistogramData(Landroid/hardware/Camera;)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 90
    sget-boolean v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "Wrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no sendHistogramData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 96
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "sendHistogramData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    .line 98
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setHistogramMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .prologue
    .line 73
    sget-boolean v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "Wrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no setHistogramMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 79
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "setHistogramMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/hardware/Camera$CameraDataCallback;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    .line 82
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setLongshot(Landroid/hardware/Camera;Z)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "enable"    # Z

    .prologue
    .line 106
    sget-boolean v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "Wrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no setLongshot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 112
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "setLongshot"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 113
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    .line 115
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setMetadataCb(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .prologue
    .line 56
    sget-boolean v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "Wrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no setMetadataCb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 62
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "setMetadataCb"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/hardware/Camera$CameraMetaDataCallback;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    .line 65
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
