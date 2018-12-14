.class Lcom/android/camera/ui/CameraRootView$1;
.super Ljava/lang/Object;
.source "CameraRootView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraRootView;->initDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraRootView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraRootView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/CameraRootView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/ui/CameraRootView$1;->this$0:Lcom/android/camera/ui/CameraRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 81
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/CameraRootView$1;->this$0:Lcom/android/camera/ui/CameraRootView;

    invoke-static {v0}, Lcom/android/camera/ui/CameraRootView;->access$000(Lcom/android/camera/ui/CameraRootView;)Lcom/android/camera/ui/CameraRootView$MyDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraRootView$1;->this$0:Lcom/android/camera/ui/CameraRootView;

    invoke-static {v0}, Lcom/android/camera/ui/CameraRootView;->access$000(Lcom/android/camera/ui/CameraRootView;)Lcom/android/camera/ui/CameraRootView$MyDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/CameraRootView$MyDisplayListener;->onDisplayChanged()V

    .line 88
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 91
    return-void
.end method
