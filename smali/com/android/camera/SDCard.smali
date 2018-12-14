.class public Lcom/android/camera/SDCard;
.super Ljava/lang/Object;
.source "SDCard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDCard"

.field private static final VOLUME_SDCARD_INDEX:I = 0x1

.field private static sSDCard:Lcom/android/camera/SDCard;


# instance fields
.field private mMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPath:Ljava/lang/String;

.field private mRawpath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/camera/SDCard;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 46
    iput-object v1, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    .line 47
    iput-object v1, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    .line 119
    new-instance v1, Lcom/android/camera/SDCard$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SDCard$1;-><init>(Lcom/android/camera/SDCard;)V

    iput-object v1, p0, Lcom/android/camera/SDCard;->mMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    :try_start_0
    const-string v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/camera/SDCard;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 97
    invoke-direct {p0}, Lcom/android/camera/SDCard;->initVolume()V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/camera/SDCard;->registerMediaBroadcastreceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDCard"

    const-string v2, "couldn\'t talk to MountService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/SDCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SDCard;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/SDCard;->initVolume()V

    return-void
.end method

.method private getSDCardStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/camera/SDCard;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 106
    .local v0, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    if-le v1, v3, :cond_0

    aget-object v1, v0, v3

    :goto_0
    iput-object v1, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    .line 108
    iput-object v2, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    .line 110
    return-void

    :cond_0
    move-object v1, v2

    .line 106
    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/android/camera/SDCard;->sSDCard:Lcom/android/camera/SDCard;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/camera/SDCard;

    invoke-direct {v0, p0}, Lcom/android/camera/SDCard;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/SDCard;->sSDCard:Lcom/android/camera/SDCard;

    .line 84
    :cond_0
    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/SDCard;
    .locals 2

    .prologue
    .line 87
    const-class v0, Lcom/android/camera/SDCard;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/SDCard;->sSDCard:Lcom/android/camera/SDCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerMediaBroadcastreceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/camera/SDCard;->mMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRawDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera/raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    goto :goto_0
.end method

.method public isWriteable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SDCard;->getSDCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v1, 0x1

    goto :goto_0
.end method
