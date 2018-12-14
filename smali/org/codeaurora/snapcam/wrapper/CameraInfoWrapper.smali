.class public Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;
.super Lorg/codeaurora/snapcam/wrapper/Wrapper;
.source "CameraInfoWrapper.java"


# static fields
.field public static final CAMERA_SUPPORT_MODE_NONZSL:I

.field public static final CAMERA_SUPPORT_MODE_ZSL:I

.field private static final TAG:Ljava/lang/String; = "CameraInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Landroid/hardware/Camera$CameraInfo;

    const-string v1, "CAMERA_SUPPORT_MODE_ZSL"

    .line 42
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x2

    .line 41
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    .line 43
    const-class v0, Landroid/hardware/Camera$CameraInfo;

    const-string v1, "CAMERA_SUPPORT_MODE_NONZSL"

    .line 44
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x3

    .line 43
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_NONZSL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/codeaurora/snapcam/wrapper/Wrapper;-><init>()V

    return-void
.end method
