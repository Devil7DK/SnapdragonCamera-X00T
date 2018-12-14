.class Lcom/android/camera/CaptureUI$28;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->showFirstTimeHelp(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/camera/CaptureUI$28;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/camera/CaptureUI$28;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2600(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/MenuHelp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/android/camera/CaptureUI$28;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2600(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/MenuHelp;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setVisibility(I)V

    .line 1607
    iget-object v0, p0, Lcom/android/camera/CaptureUI$28;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureUI;->access$2602(Lcom/android/camera/CaptureUI;Lcom/android/camera/ui/MenuHelp;)Lcom/android/camera/ui/MenuHelp;

    .line 1609
    :cond_0
    return-void
.end method
