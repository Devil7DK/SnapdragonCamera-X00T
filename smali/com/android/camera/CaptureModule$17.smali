.class Lcom/android/camera/CaptureModule$17;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 2440
    iput-object p1, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    iput-boolean p2, p0, Lcom/android/camera/CaptureModule$17;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule$17;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->showRefocusToast(Z)V

    .line 2443
    return-void
.end method
