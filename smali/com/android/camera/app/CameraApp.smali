.class public Lcom/android/camera/app/CameraApp;
.super Landroid/app/Application;
.source "CameraApp.java"


# static fields
.field private static final LOW_MEMORY_DEVICE_THRESHOLD:J = 0x80000000L

.field public static mIsLowMemoryDevice:Z

.field private static mMaxSystemMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/app/CameraApp;->mIsLowMemoryDevice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/camera/app/CameraApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 35
    .local v0, "actManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 36
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 37
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v2, Lcom/android/camera/app/CameraApp;->mMaxSystemMemory:J

    .line 38
    sget-wide v2, Lcom/android/camera/app/CameraApp;->mMaxSystemMemory:J

    const-wide v4, 0x80000000L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 39
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/app/CameraApp;->mIsLowMemoryDevice:Z

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/android/camera/SettingsManager;->createInstance(Landroid/content/Context;)Lcom/android/camera/SettingsManager;

    .line 42
    invoke-static {p0}, Lcom/android/camera/util/UsageStatistics;->initialize(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/android/camera/util/CameraUtil;->initialize(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/android/camera/SDCard;->initialize(Landroid/content/Context;)V

    .line 45
    return-void
.end method
