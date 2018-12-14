.class Lcom/android/camera/BestpictureFragment$1;
.super Ljava/lang/Object;
.source "BestpictureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/BestpictureFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BestpictureFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/camera/BestpictureFragment$1;->this$0:Lcom/android/camera/BestpictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/BestpictureFragment$1;->this$0:Lcom/android/camera/BestpictureFragment;

    invoke-static {v0}, Lcom/android/camera/BestpictureFragment;->access$100(Lcom/android/camera/BestpictureFragment;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BestpictureFragment$1;->this$0:Lcom/android/camera/BestpictureFragment;

    invoke-static {v1}, Lcom/android/camera/BestpictureFragment;->access$000(Lcom/android/camera/BestpictureFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/BestpictureActivity$ImageItems;->toggleImageSelection(I)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/BestpictureFragment$1;->this$0:Lcom/android/camera/BestpictureFragment;

    invoke-static {v0}, Lcom/android/camera/BestpictureFragment;->access$200(Lcom/android/camera/BestpictureFragment;)V

    .line 82
    return-void
.end method
