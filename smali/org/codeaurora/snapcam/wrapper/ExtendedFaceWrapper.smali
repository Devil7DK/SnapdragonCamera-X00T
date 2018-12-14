.class public Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;
.super Lorg/codeaurora/snapcam/wrapper/Wrapper;
.source "ExtendedFaceWrapper.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.qualcomm.qti.camera.ExtendedFace"

.field private static mExtendFaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static method_getBlinkDetected:Ljava/lang/reflect/Method;

.field private static method_getFaceRecognized:Ljava/lang/reflect/Method;

.field private static method_getGazeAngle:Ljava/lang/reflect/Method;

.field private static method_getLeftEyeBlinkDegree:Ljava/lang/reflect/Method;

.field private static method_getLeftRightDirection:Ljava/lang/reflect/Method;

.field private static method_getLeftRightGazeDegree:Ljava/lang/reflect/Method;

.field private static method_getRightEyeBlinkDegree:Ljava/lang/reflect/Method;

.field private static method_getRollDirection:Ljava/lang/reflect/Method;

.field private static method_getSmileDegree:Ljava/lang/reflect/Method;

.field private static method_getSmileScore:Ljava/lang/reflect/Method;

.field private static method_getTopBottomGazeDegree:Ljava/lang/reflect/Method;

.field private static method_getUpDownDirection:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileDegree:Ljava/lang/reflect/Method;

    .line 68
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileScore:Ljava/lang/reflect/Method;

    .line 82
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getBlinkDetected:Ljava/lang/reflect/Method;

    .line 96
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getFaceRecognized:Ljava/lang/reflect/Method;

    .line 110
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getGazeAngle:Ljava/lang/reflect/Method;

    .line 124
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getUpDownDirection:Ljava/lang/reflect/Method;

    .line 138
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightDirection:Ljava/lang/reflect/Method;

    .line 152
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRollDirection:Ljava/lang/reflect/Method;

    .line 166
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftEyeBlinkDegree:Ljava/lang/reflect/Method;

    .line 180
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRightEyeBlinkDegree:Ljava/lang/reflect/Method;

    .line 194
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightGazeDegree:Ljava/lang/reflect/Method;

    .line 208
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getTopBottomGazeDegree:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/codeaurora/snapcam/wrapper/Wrapper;-><init>()V

    return-void
.end method

.method public static getBlinkDetected(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "blink":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getBlinkDetected:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 87
    const-string v2, "getBlinkDetected"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getBlinkDetected:Ljava/lang/reflect/Method;

    .line 89
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getBlinkDetected:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFaceRecognized(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "faces":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getFaceRecognized:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 101
    const-string v2, "getFaceRecognized"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getFaceRecognized:Ljava/lang/reflect/Method;

    .line 103
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getFaceRecognized:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getGazeAngle(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "angle":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getGazeAngle:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 115
    const-string v2, "getGazeAngle"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getGazeAngle:Ljava/lang/reflect/Method;

    .line 117
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getGazeAngle:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLeftEyeBlinkDegree(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "degree":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftEyeBlinkDegree:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 171
    const-string v2, "getLeftEyeBlinkDegree"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftEyeBlinkDegree:Ljava/lang/reflect/Method;

    .line 173
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftEyeBlinkDegree:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLeftRightDirection(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "direction":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightDirection:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 143
    const-string v2, "getLeftRightDirection"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightDirection:Ljava/lang/reflect/Method;

    .line 145
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightDirection:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLeftRightGazeDegree(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "degree":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightGazeDegree:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 199
    const-string v2, "getLeftRightGazeDegree"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightGazeDegree:Ljava/lang/reflect/Method;

    .line 201
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getLeftRightGazeDegree:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "Wrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:com.qualcomm.qti.camera.ExtendedFace no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    .line 228
    :cond_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->mExtendFaceClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 229
    const-string v0, "com.qualcomm.qti.camera.ExtendedFace"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->mExtendFaceClass:Ljava/lang/Class;

    .line 231
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->mExtendFaceClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRightEyeBlinkDegree(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "degree":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRightEyeBlinkDegree:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 185
    const-string v2, "getRightEyeBlinkDegree"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRightEyeBlinkDegree:Ljava/lang/reflect/Method;

    .line 187
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRightEyeBlinkDegree:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRollDirection(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "direction":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRollDirection:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 157
    const-string v2, "getRollDirection"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRollDirection:Ljava/lang/reflect/Method;

    .line 159
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getRollDirection:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSmileDegree(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "degree":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileDegree:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 59
    const-string v2, "getSmileDegree"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileDegree:Ljava/lang/reflect/Method;

    .line 61
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileDegree:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSmileScore(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "score":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileScore:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 73
    const-string v2, "getSmileScore"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileScore:Ljava/lang/reflect/Method;

    .line 75
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getSmileScore:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTopBottomGazeDegree(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "degree":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getTopBottomGazeDegree:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 213
    const-string v2, "getTopBottomGazeDegree"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getTopBottomGazeDegree:Ljava/lang/reflect/Method;

    .line 215
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getTopBottomGazeDegree:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    :goto_0
    return v0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUpDownDirection(Landroid/hardware/Camera$Face;)I
    .locals 4
    .param p0, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "direction":I
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getUpDownDirection:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "getUpDownDirection"

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getUpDownDirection:Ljava/lang/reflect/Method;

    .line 131
    :cond_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->method_getUpDownDirection:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 135
    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isExtendedFaceInstance(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 43
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->mExtendFaceClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 45
    :try_start_0
    const-string v1, "com.qualcomm.qti.camera.ExtendedFace"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->mExtendFaceClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->mExtendFaceClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const/4 v1, 0x0

    goto :goto_0
.end method
