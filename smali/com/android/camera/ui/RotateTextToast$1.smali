.class Lcom/android/camera/ui/RotateTextToast$1;
.super Ljava/lang/Object;
.source "RotateTextToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RotateTextToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RotateTextToast;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RotateTextToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/RotateTextToast;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->access$000(Lcom/android/camera/ui/RotateTextToast;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->access$100(Lcom/android/camera/ui/RotateTextToast;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->access$000(Lcom/android/camera/ui/RotateTextToast;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->access$200()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->access$000(Lcom/android/camera/ui/RotateTextToast;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->access$002(Lcom/android/camera/ui/RotateTextToast;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;

    .line 73
    return-void
.end method
