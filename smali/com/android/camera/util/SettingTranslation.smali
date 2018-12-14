.class public Lcom/android/camera/util/SettingTranslation;
.super Ljava/lang/Object;
.source "SettingTranslation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/SettingTranslation$TwoWayMap;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

.field private static final NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

.field public static final NOT_FOUND:I = -0x1

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 39
    new-instance v1, Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-direct {v1, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;-><init>(Lcom/android/camera/util/SettingTranslation$1;)V

    sput-object v1, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    .line 40
    new-instance v1, Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-direct {v1, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;-><init>(Lcom/android/camera/util/SettingTranslation$1;)V

    sput-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    .line 41
    new-instance v1, Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-direct {v1, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;-><init>(Lcom/android/camera/util/SettingTranslation$1;)V

    sput-object v1, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    .line 44
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "default"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 45
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "h263"

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 46
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "h264"

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 47
    const-class v1, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v2, "HEVC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 49
    .local v0, "h265":I
    if-nez v0, :cond_0

    .line 50
    const-class v1, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v2, "H265"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 53
    :cond_0
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "h265"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 54
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "mpeg-4-sp"

    invoke-virtual {v1, v2, v7}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 55
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "vp8"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 57
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "aac"

    invoke-virtual {v1, v2, v7}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 58
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "aac-eld"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 59
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "amr-nb"

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 60
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "amr-wb"

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 61
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "default"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 62
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "he-aac"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 63
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "vorbis"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 65
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "off"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 66
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "fast"

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 67
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "high-quality"

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 69
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "minimal"

    invoke-virtual {v1, v2, v7}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 70
    sget-object v1, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    const-string v2, "zero-shutter-lag"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->put(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioEncoder(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->get(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAudioEncoder(I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 87
    sget-object v0, Lcom/android/camera/util/SettingTranslation;->AUDIO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNoiseReduction(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->get(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNoiseReduction(I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/android/camera/util/SettingTranslation;->NOISE_REDUCTION_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoEncoder(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->get(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVideoEncoder(I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/android/camera/util/SettingTranslation;->VIDEO_ENCODER_TABLE:Lcom/android/camera/util/SettingTranslation$TwoWayMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/SettingTranslation$TwoWayMap;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
