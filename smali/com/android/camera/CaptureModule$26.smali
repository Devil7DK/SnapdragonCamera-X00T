.class Lcom/android/camera/CaptureModule$26;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->onQueueStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$full:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 4500
    iput-object p1, p0, Lcom/android/camera/CaptureModule$26;->this$0:Lcom/android/camera/CaptureModule;

    iput-boolean p2, p0, Lcom/android/camera/CaptureModule$26;->val$full:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4503
    iget-object v0, p0, Lcom/android/camera/CaptureModule$26;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule$26;->val$full:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 4504
    return-void

    .line 4503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
