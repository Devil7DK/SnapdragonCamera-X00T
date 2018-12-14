.class Lcom/android/camera/PhotoModule$SelfieThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfieThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/camera/PhotoModule$SelfieThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$SelfieThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 625
    const-wide/16 v0, 0x2a8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 626
    iget-object v0, p0, Lcom/android/camera/PhotoModule$SelfieThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$SelfieThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$SelfieThread$1;-><init>(Lcom/android/camera/PhotoModule$SelfieThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$SelfieThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$2902(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$SelfieThread;)Lcom/android/camera/PhotoModule$SelfieThread;

    .line 634
    return-void

    .line 631
    :catch_0
    move-exception v0

    goto :goto_0
.end method
