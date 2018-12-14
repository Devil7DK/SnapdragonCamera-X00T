.class Lcom/android/camera/PhotoUI$1;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 278
    sub-int v1, p4, p2

    .line 279
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 281
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->tryToCloseSubList()V

    .line 283
    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v2}, Lcom/android/camera/PhotoUI;->access$300(Lcom/android/camera/PhotoUI;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v2}, Lcom/android/camera/PhotoUI;->access$400(Lcom/android/camera/PhotoUI;)I

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v2, v1}, Lcom/android/camera/PhotoUI;->access$302(Lcom/android/camera/PhotoUI;I)I

    .line 285
    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v2, v0}, Lcom/android/camera/PhotoUI;->access$402(Lcom/android/camera/PhotoUI;I)I

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v2}, Lcom/android/camera/PhotoUI;->access$500(Lcom/android/camera/PhotoUI;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v3}, Lcom/android/camera/PhotoUI;->access$600(Lcom/android/camera/PhotoUI;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    .line 289
    invoke-static {v2}, Lcom/android/camera/PhotoUI;->access$700(Lcom/android/camera/PhotoUI;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v2}, Lcom/android/camera/PhotoUI;->access$800(Lcom/android/camera/PhotoUI;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v3}, Lcom/android/camera/PhotoUI;->access$900(Lcom/android/camera/PhotoUI;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->layoutPreview(F)V

    .line 291
    iget-object v2, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/PhotoUI;->access$702(Lcom/android/camera/PhotoUI;Z)Z

    .line 293
    :cond_2
    return-void
.end method
