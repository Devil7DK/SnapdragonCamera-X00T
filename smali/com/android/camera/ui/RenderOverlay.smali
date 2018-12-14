.class public Lcom/android/camera/ui/RenderOverlay;
.super Landroid/widget/FrameLayout;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RenderOverlay$RenderView;,
        Lcom/android/camera/ui/RenderOverlay$Renderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_Overlay"


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RenderOverlay$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mPosition:[I

.field private mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

.field private mTouchClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RenderOverlay$Renderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    .line 54
    new-instance v0, Lcom/android/camera/ui/RenderOverlay$RenderView;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/RenderOverlay$RenderView;-><init>(Lcom/android/camera/ui/RenderOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderOverlay;->setWillNotDraw(Z)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/RenderOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/RenderOverlay;->adjustPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private adjustPosition()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderOverlay;->getLocationInWindow([I)V

    .line 116
    return-void
.end method


# virtual methods
.method public addRenderer(ILcom/android/camera/ui/RenderOverlay$Renderer;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "renderer"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    invoke-interface {p2, p0}, Lcom/android/camera/ui/RenderOverlay$Renderer;->setOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getBottom()I

    move-result v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/camera/ui/RenderOverlay$Renderer;->layout(IIII)V

    .line 79
    return-void
.end method

.method public addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V
    .locals 4
    .param p1, "renderer"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {p1, p0}, Lcom/android/camera/ui/RenderOverlay$Renderer;->setOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 69
    invoke-interface {p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->handlesTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getBottom()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/RenderOverlay$Renderer;->layout(IIII)V

    .line 73
    return-void
.end method

.method public directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;
    .param p2, "target"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    invoke-virtual {v1, p2}, Lcom/android/camera/ui/RenderOverlay$RenderView;->setTouchTarget(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RenderOverlay$RenderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 110
    .local v0, "res":Z
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RenderOverlay$RenderView;->setTouchTarget(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 111
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v2}, Lcom/android/camera/PreviewGestures;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v2, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "res":Z
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 100
    .local v0, "client":Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 101
    goto :goto_1
.end method

.method public getClientSize()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWindowPositionX()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getWindowPositionY()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public remove(Lcom/android/camera/ui/RenderOverlay$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/RenderOverlay$Renderer;->setOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 84
    return-void
.end method

.method public setGestures(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .param p1, "gestures"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/RenderOverlay;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 64
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay$RenderView;->invalidate()V

    .line 128
    return-void
.end method
