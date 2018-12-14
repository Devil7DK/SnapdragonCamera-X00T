.class Lcom/android/camera/ui/OneUICameraControls$2;
.super Ljava/lang/Object;
.source "OneUICameraControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/OneUICameraControls;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/OneUICameraControls;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/OneUICameraControls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/ui/OneUICameraControls$2;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls$2;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/OneUICameraControls;->access$000(Lcom/android/camera/ui/OneUICameraControls;)V

    .line 194
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls$2;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/OneUICameraControls;->access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ProMode;->getMode()I

    move-result v0

    .line 195
    .local v0, "mode":I
    if-ne v0, v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls$2;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/OneUICameraControls;->access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ProMode;->setMode(I)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls$2;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/OneUICameraControls;->access$300(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls$2;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/OneUICameraControls;->access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ProMode;->setMode(I)V

    goto :goto_0
.end method
