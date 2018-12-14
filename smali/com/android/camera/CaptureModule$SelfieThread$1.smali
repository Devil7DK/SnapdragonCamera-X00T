.class Lcom/android/camera/CaptureModule$SelfieThread$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$SelfieThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$SelfieThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$SelfieThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$SelfieThread;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/camera/CaptureModule$SelfieThread$1;->this$1:Lcom/android/camera/CaptureModule$SelfieThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/CaptureModule$SelfieThread$1;->this$1:Lcom/android/camera/CaptureModule$SelfieThread;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$SelfieThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$000(Lcom/android/camera/CaptureModule;)V

    .line 429
    return-void
.end method
