.class Lcom/android/camera/BestpictureActivity$5;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->initOverFlow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;

.field final synthetic val$pop:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/android/camera/BestpictureActivity;Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BestpictureActivity;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$5;->this$0:Lcom/android/camera/BestpictureActivity;

    iput-object p2, p0, Lcom/android/camera/BestpictureActivity$5;->val$pop:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$5;->val$pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 272
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$5;->this$0:Lcom/android/camera/BestpictureActivity;

    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$5;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity;->access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/BestpictureActivity$ImageItems;->access$200(Lcom/android/camera/BestpictureActivity$ImageItems;)[Z

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/BestpictureActivity;->access$600(Lcom/android/camera/BestpictureActivity;IZ)V

    .line 274
    return-void
.end method
