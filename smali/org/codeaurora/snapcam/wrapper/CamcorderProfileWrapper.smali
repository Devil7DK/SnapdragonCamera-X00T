.class public Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;
.super Lorg/codeaurora/snapcam/wrapper/Wrapper;
.source "CamcorderProfileWrapper.java"


# static fields
.field public static final QUALITY_2k:I

.field public static final QUALITY_4KDCI:I

.field public static final QUALITY_HIGH_SPEED_4KDCI:I

.field public static final QUALITY_HIGH_SPEED_CIF:I

.field public static final QUALITY_HIGH_SPEED_VGA:I

.field public static final QUALITY_QHD:I

.field public static final QUALITY_TIME_LAPSE_4KDCI:I

.field public static final QUALITY_TIME_LAPSE_VGA:I

.field public static final QUALITY_VGA:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 41
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_VGA"

    .line 42
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 41
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_VGA:I

    .line 43
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_4KDCI"

    .line 44
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 43
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_4KDCI:I

    .line 45
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_TIME_LAPSE_VGA"

    .line 46
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 45
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_TIME_LAPSE_VGA:I

    .line 47
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_TIME_LAPSE_4KDCI"

    .line 48
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 47
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_TIME_LAPSE_4KDCI:I

    .line 49
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_HIGH_SPEED_CIF"

    .line 50
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_HIGH_SPEED_CIF:I

    .line 51
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_HIGH_SPEED_VGA"

    .line 52
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 51
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_HIGH_SPEED_VGA:I

    .line 53
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_HIGH_SPEED_4KDCI"

    .line 54
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_HIGH_SPEED_4KDCI:I

    .line 55
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_QHD"

    .line 56
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_QHD:I

    .line 57
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v1, "QUALITY_2k"

    .line 58
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->getFieldValue(Ljava/lang/reflect/Field;I)I

    move-result v0

    sput v0, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_2k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/codeaurora/snapcam/wrapper/Wrapper;-><init>()V

    return-void
.end method
