.class Lcom/android/camera/imageprocessor/PostProcessor$5;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor;->addImage(Landroid/media/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;

.field final synthetic val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-nez v0, :cond_0

    .line 931
    monitor-exit v1

    .line 939
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 938
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 936
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->init(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
