.class Lcom/android/camera/TsMakeupManager$2;
.super Ljava/lang/Object;
.source "TsMakeupManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TsMakeupManager;->showSingleView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TsMakeupManager;


# direct methods
.method constructor <init>(Lcom/android/camera/TsMakeupManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0}, Lcom/android/camera/TsMakeupManager;->access$400(Lcom/android/camera/TsMakeupManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 389
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0}, Lcom/android/camera/TsMakeupManager;->access$500(Lcom/android/camera/TsMakeupManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v1}, Lcom/android/camera/TsMakeupManager;->access$400(Lcom/android/camera/TsMakeupManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 390
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/TsMakeupManager;->access$402(Lcom/android/camera/TsMakeupManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 392
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0, v2}, Lcom/android/camera/TsMakeupManager;->access$602(Lcom/android/camera/TsMakeupManager;I)I

    .line 393
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0, v2}, Lcom/android/camera/TsMakeupManager;->access$702(Lcom/android/camera/TsMakeupManager;I)I

    .line 395
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->showMakeupView()V

    .line 396
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$2;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0}, Lcom/android/camera/TsMakeupManager;->access$300(Lcom/android/camera/TsMakeupManager;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->adjustOrientation()V

    .line 397
    return-void
.end method
