.class Lcom/android/camera/ui/ModuleSwitcher$1;
.super Ljava/lang/Object;
.source "ModuleSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModuleSwitcher;->initPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModuleSwitcher;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModuleSwitcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModuleSwitcher;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher$1;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    iput p2, p0, Lcom/android/camera/ui/ModuleSwitcher$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher$1;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher$1;->this$0:Lcom/android/camera/ui/ModuleSwitcher;

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher$1;->val$index:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->access$000(Lcom/android/camera/ui/ModuleSwitcher;I)V

    .line 226
    :cond_0
    return-void
.end method
