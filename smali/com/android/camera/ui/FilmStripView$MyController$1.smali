.class Lcom/android/camera/ui/FilmStripView$MyController$1;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView$MyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FilmStripView$MyController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2134
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v0, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2002(Lcom/android/camera/ui/FilmStripView$MyController;Z)Z

    .line 2135
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2138
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2100(Lcom/android/camera/ui/FilmStripView;)V

    .line 2139
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v1, v1, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2140
    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    goto :goto_0
.end method

.method public onScrollUpdate(II)V
    .locals 3
    .param p1, "currX"    # I
    .param p2, "currY"    # I

    .prologue
    .line 2122
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v1, v1, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, p1}, Lcom/android/camera/ui/FilmStripView;->access$1602(Lcom/android/camera/ui/FilmStripView;I)I

    .line 2124
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v1, v1, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1700(Lcom/android/camera/ui/FilmStripView;)Z

    move-result v0

    .line 2125
    .local v0, "stopScroll":Z
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v1, v1, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v2, v2, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/FilmStripView;->access$1800(Lcom/android/camera/ui/FilmStripView;I)V

    .line 2126
    if-eqz v0, :cond_0

    .line 2127
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v1, v1, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    .line 2129
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$1;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v1, v1, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 2130
    return-void
.end method
