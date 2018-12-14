.class Lcom/android/camera/ui/FilmStripView$MyScroller$1;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView$MyScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmStripView$MyScroller;

    .prologue
    .line 2598
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2601
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3400(Lcom/android/camera/ui/FilmStripView$MyScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 2602
    .local v0, "newPosition":Z
    if-nez v0, :cond_0

    .line 2603
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3500(Lcom/android/camera/ui/FilmStripView$MyScroller;)Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;->onScrollEnd()V

    .line 2609
    :goto_0
    return-void

    .line 2606
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3500(Lcom/android/camera/ui/FilmStripView$MyScroller;)Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3400(Lcom/android/camera/ui/FilmStripView$MyScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3400(Lcom/android/camera/ui/FilmStripView$MyScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;->onScrollUpdate(II)V

    .line 2607
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3600(Lcom/android/camera/ui/FilmStripView$MyScroller;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2608
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$1;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3600(Lcom/android/camera/ui/FilmStripView$MyScroller;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
