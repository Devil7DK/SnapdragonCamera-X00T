.class Lcom/android/camera/ui/PieRenderer$6;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->showSuccess(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;

.field final synthetic val$timeout:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$6;->this$0:Lcom/android/camera/ui/PieRenderer;

    iput-boolean p2, p0, Lcom/android/camera/ui/PieRenderer$6;->val$timeout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1082
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$6;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$1400(Lcom/android/camera/ui/PieRenderer;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$6;->this$0:Lcom/android/camera/ui/PieRenderer;

    const-wide/16 v2, 0x64

    iget-boolean v1, p0, Lcom/android/camera/ui/PieRenderer$6;->val$timeout:Z

    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer$6;->this$0:Lcom/android/camera/ui/PieRenderer;

    .line 1084
    invoke-static {v4}, Lcom/android/camera/ui/PieRenderer;->access$1500(Lcom/android/camera/ui/PieRenderer;)I

    move-result v4

    int-to-float v4, v4

    .line 1083
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/camera/ui/PieRenderer;->access$1600(Lcom/android/camera/ui/PieRenderer;JZF)V

    .line 1085
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$6;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1402(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1086
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$6;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0, v5}, Lcom/android/camera/ui/PieRenderer;->access$1702(Lcom/android/camera/ui/PieRenderer;Z)Z

    .line 1088
    :cond_0
    return-void
.end method
