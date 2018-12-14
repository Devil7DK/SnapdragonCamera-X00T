.class Lcom/android/camera/PhotoModule$StartPreviewThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPreviewThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$OpenCameraThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$OpenCameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$400(Lcom/android/camera/PhotoModule;)V

    .line 381
    return-void

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method
