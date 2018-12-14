.class Lcom/android/camera/CaptureModule$27;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$resultAFState:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 4576
    iput-object p1, p0, Lcom/android/camera/CaptureModule$27;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$27;->val$resultAFState:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4579
    iget-object v0, p0, Lcom/android/camera/CaptureModule$27;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6400(Lcom/android/camera/CaptureModule;)Lcom/android/camera/FocusStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$27;->val$resultAFState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusStateListener;->onFocusStatusUpdate(I)V

    .line 4580
    return-void
.end method
