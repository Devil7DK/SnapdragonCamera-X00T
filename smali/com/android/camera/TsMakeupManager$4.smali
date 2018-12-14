.class Lcom/android/camera/TsMakeupManager$4;
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

.field final synthetic val$layout:Landroid/widget/LinearLayout;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/android/camera/TsMakeupManager;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager$4;->this$0:Lcom/android/camera/TsMakeupManager;

    iput-object p2, p0, Lcom/android/camera/TsMakeupManager$4;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/android/camera/TsMakeupManager$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 419
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0}, Lcom/android/camera/TsMakeupManager;->access$700(Lcom/android/camera/TsMakeupManager;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->val$seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0, v2}, Lcom/android/camera/TsMakeupManager;->access$702(Lcom/android/camera/TsMakeupManager;I)I

    .line 429
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0, v3}, Lcom/android/camera/TsMakeupManager;->access$602(Lcom/android/camera/TsMakeupManager;I)I

    .line 425
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->val$seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/camera/TsMakeupManager$4;->this$0:Lcom/android/camera/TsMakeupManager;

    const-string v2, "pref_camera_tsmakeup_clean"

    invoke-static {v1, v2}, Lcom/android/camera/TsMakeupManager;->access$800(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v0, v3}, Lcom/android/camera/TsMakeupManager;->access$702(Lcom/android/camera/TsMakeupManager;I)I

    .line 428
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager$4;->this$0:Lcom/android/camera/TsMakeupManager;

    iget-object v1, p0, Lcom/android/camera/TsMakeupManager$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/camera/TsMakeupManager;->access$900(Lcom/android/camera/TsMakeupManager;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method
