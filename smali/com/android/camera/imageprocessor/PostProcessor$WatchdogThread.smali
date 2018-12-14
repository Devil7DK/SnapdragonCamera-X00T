.class Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;
.super Ljava/lang/Thread;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogThread"
.end annotation


# instance fields
.field private counter:I

.field private isAlive:Z

.field private isMonitor:Z

.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    const/4 v1, 0x0

    .line 758
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isAlive:Z

    .line 760
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    .line 761
    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    return-void
.end method

.method private bark()V
    .locals 3

    .prologue
    .line 791
    const-string v1, "PostProcessor"

    const-string v2, "It takes too long to get the images and process the filter!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->getFilterIndex()I

    move-result v0

    .line 793
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    .line 794
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1, v0}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    .line 795
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isAlive:Z

    .line 789
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 763
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isAlive:Z

    if-eqz v0, :cond_1

    .line 765
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    if-eqz v0, :cond_0

    .line 769
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    .line 770
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->bark()V

    .line 776
    :cond_1
    return-void

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    .line 780
    return-void
.end method

.method public stopMonitor()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 783
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    .line 784
    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    .line 785
    return-void
.end method
