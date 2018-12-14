.class public Lcom/android/camera/util/VendorTagUtil;
.super Ljava/lang/Object;
.source "VendorTagUtil.java"


# static fields
.field private static CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ISO_EXP:Landroid/hardware/camera2/CaptureRequest$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field private static JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field private static SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VendorTagUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.CDS.cds_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/util/VendorTagUtil;->CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 40
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.jpeg_encode_crop.enable"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 43
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.jpeg_encode_crop.rect"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 46
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.jpeg_encode_crop.roi"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 49
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.iso_exp_priority.select_priority"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/util/VendorTagUtil;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 52
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.iso_exp_priority.use_iso_exp_priority"

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/util/VendorTagUtil;->ISO_EXP:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCdsModeSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 82
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v0}, Lcom/android/camera/util/VendorTagUtil;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    return v0
.end method

.method private static isIsoExpPrioritySelectPrioritySupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 122
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v0}, Lcom/android/camera/util/VendorTagUtil;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    return v0
.end method

.method private static isIsoExpPrioritySupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 131
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->ISO_EXP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v0}, Lcom/android/camera/util/VendorTagUtil;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    return v0
.end method

.method private static isJpegCropEnableSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 92
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v0}, Lcom/android/camera/util/VendorTagUtil;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    return v0
.end method

.method private static isJpegCropRectSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 102
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v0}, Lcom/android/camera/util/VendorTagUtil;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    return v0
.end method

.method private static isJpegRoiRectSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 112
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v0}, Lcom/android/camera/util/VendorTagUtil;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    return v0
.end method

.method private static isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 5
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    const/4 v1, 0x1

    .line 61
    .local v1, "supported":Z
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    if-eqz v1, :cond_0

    .line 67
    const-string v2, "VendorTagUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendor tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .line 64
    const-string v2, "VendorTagUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendor tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCdsMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/camera/util/VendorTagUtil;->isCdsModeSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static setIsoExpPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/camera/util/VendorTagUtil;->isIsoExpPrioritySupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->ISO_EXP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static setIsoExpPrioritySelectPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/camera/util/VendorTagUtil;->isIsoExpPrioritySelectPrioritySupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static setJpegCropEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Byte;)V
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p1, "value"    # Ljava/lang/Byte;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/camera/util/VendorTagUtil;->isJpegCropEnableSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static setJpegCropRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p1, "value"    # [I

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/camera/util/VendorTagUtil;->isJpegCropRectSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-void
.end method

.method public static setJpegRoiRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p1, "value"    # [I

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/camera/util/VendorTagUtil;->isJpegRoiRectSupported(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/camera/util/VendorTagUtil;->JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method
