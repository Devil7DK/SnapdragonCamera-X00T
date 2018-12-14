.class Lcom/android/camera/CaptureUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/CaptureUI;
    .param p2, "x1"    # Lcom/android/camera/CaptureUI$1;

    .prologue
    .line 1770
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureUI$ZoomChangeListener;-><init>(Lcom/android/camera/CaptureUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2800(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2800(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1792
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2800(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2800(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1783
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2800(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1785
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "mZoomValue"    # F

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureModule;->onZoomChanged(F)V

    .line 1774
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/android/camera/CaptureUI$ZoomChangeListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(F)V

    .line 1777
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1797
    return-void
.end method
