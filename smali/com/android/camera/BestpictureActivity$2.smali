.class Lcom/android/camera/BestpictureActivity$2;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BestpictureActivity;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "choosenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity;->access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity$ImageItems;->access$200(Lcom/android/camera/BestpictureActivity$ImageItems;)[Z

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity;->access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity$ImageItems;->access$200(Lcom/android/camera/BestpictureActivity$ImageItems;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    const-string v4, "save"

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->loadDialogShowConfig(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 222
    .local v2, "showSaveDialog":Z
    if-eqz v2, :cond_2

    .line 224
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Lcom/android/camera/BestpictureActivity;->access$300(Lcom/android/camera/BestpictureActivity;II)V

    .line 225
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity;->access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 226
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity;->access$500(Lcom/android/camera/BestpictureActivity;)V

    .line 230
    :goto_1
    return-void

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$2;->this$0:Lcom/android/camera/BestpictureActivity;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/camera/BestpictureActivity;->access$600(Lcom/android/camera/BestpictureActivity;IZ)V

    goto :goto_1
.end method
