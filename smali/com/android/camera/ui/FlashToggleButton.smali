.class public Lcom/android/camera/ui/FlashToggleButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "FlashToggleButton.java"


# instance fields
.field private cameraFlashIcon:[I

.field private mIndex:I

.field private mIsVideoFlash:Z

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private videoFlashIcon:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    .line 51
    return-void

    .line 44
    :array_0
    .array-data 4
        0x7f020043
        0x7f020042
        0x7f020041
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x7f020043
        0x7f020041
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    .line 55
    return-void

    .line 44
    :array_0
    .array-data 4
        0x7f020043
        0x7f020042
        0x7f020041
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x7f020043
        0x7f020041
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FlashToggleButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FlashToggleButton;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FlashToggleButton;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FlashToggleButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FlashToggleButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/FlashToggleButton;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/FlashToggleButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/ui/FlashToggleButton;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    .line 101
    .local v0, "icons":[I
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashToggleButton;->setImageResource(I)V

    .line 102
    return-void

    .line 99
    .end local v0    # "icons":[I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    .restart local v0    # "icons":[I
    goto :goto_0
.end method


# virtual methods
.method public init(Z)V
    .locals 3
    .param p1, "videoFlash"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    .line 60
    iget-boolean v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v0, "pref_camera2_video_flashmode_key"

    .line 65
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    .line 67
    iget v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 68
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 92
    :goto_1
    return-void

    .line 63
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, "pref_camera2_flashmode_key"

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/camera/ui/FlashToggleButton;->update()V

    .line 75
    new-instance v1, Lcom/android/camera/ui/FlashToggleButton$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FlashToggleButton$1;-><init>(Lcom/android/camera/ui/FlashToggleButton;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
