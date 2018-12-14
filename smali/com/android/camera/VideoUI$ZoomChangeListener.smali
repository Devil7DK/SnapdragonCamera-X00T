.class Lcom/android/camera/VideoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoUI;Lcom/android/camera/VideoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoUI;
    .param p2, "x1"    # Lcom/android/camera/VideoUI$1;

    .prologue
    .line 1131
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/VideoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1900(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1900(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1153
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1900(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1500(Lcom/android/camera/VideoUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1900(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1900(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1146
    :cond_1
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1158
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1200(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/VideoController;->onZoomChanged(I)I

    move-result v0

    .line 1135
    .local v0, "newZoom":I
    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1700(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1700(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1800(Lcom/android/camera/VideoUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 1138
    :cond_0
    return-void
.end method
