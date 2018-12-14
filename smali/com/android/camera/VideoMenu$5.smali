.class Lcom/android/camera/VideoMenu$5;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoMenu;->initFilterModeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/camera/VideoMenu$5;->this$0:Lcom/android/camera/VideoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 542
    iget-object v2, p0, Lcom/android/camera/VideoMenu$5;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v2}, Lcom/android/camera/VideoMenu;->addFilterMode()V

    .line 543
    iget-object v2, p0, Lcom/android/camera/VideoMenu$5;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v2}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 544
    .local v0, "menuLayout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 546
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/camera/VideoMenu$5;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v2}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->adjustOrientation()V

    .line 547
    iget-object v2, p0, Lcom/android/camera/VideoMenu$5;->this$0:Lcom/android/camera/VideoMenu;

    iget-object v3, p0, Lcom/android/camera/VideoMenu$5;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v3}, Lcom/android/camera/VideoMenu;->access$300(Lcom/android/camera/VideoMenu;)I

    move-result v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/camera/VideoMenu;->animateSlideIn(Landroid/view/View;IZ)V

    .line 549
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
