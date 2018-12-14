.class Lcom/android/camera/ui/RenderOverlay$RenderView;
.super Landroid/view/View;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderView"
.end annotation


# instance fields
.field private mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

.field final synthetic this$0:Lcom/android/camera/ui/RenderOverlay;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderOverlay;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    .line 135
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderOverlay$RenderView;->setWillNotDraw(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    invoke-interface {v2, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/RenderOverlay;->access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "res":Z
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/RenderOverlay;->access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 152
    .local v0, "client":Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 153
    goto :goto_1

    .line 156
    .end local v0    # "client":Lcom/android/camera/ui/RenderOverlay$Renderer;
    .end local v1    # "res":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 176
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 174
    .local v0, "renderer":Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/RenderOverlay;->access$100(Lcom/android/camera/ui/RenderOverlay;)V

    .line 162
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 165
    .local v0, "renderer":Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/camera/ui/RenderOverlay$Renderer;->layout(IIII)V

    goto :goto_0
.end method

.method public setTouchTarget(Lcom/android/camera/ui/RenderOverlay$Renderer;)V
    .locals 0
    .param p1, "target"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 141
    return-void
.end method
