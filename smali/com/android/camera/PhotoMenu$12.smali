.class Lcom/android/camera/PhotoMenu$12;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->initFilterModeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1356
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$800(Lcom/android/camera/PhotoMenu;)V

    .line 1358
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v2}, Lcom/android/camera/PhotoMenu;->addFilterMode()V

    .line 1359
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1360
    .local v0, "menuLayout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1361
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1362
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->adjustOrientation()V

    .line 1363
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v3, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v3}, Lcom/android/camera/PhotoMenu;->access$700(Lcom/android/camera/PhotoMenu;)I

    move-result v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/camera/PhotoMenu;->animateSlideIn(Landroid/view/View;IZ)V

    .line 1365
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
