.class Lcom/android/camera/ui/PieRenderer$7;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/ProgressRenderer$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->clear(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$7;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$7;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$7;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$1800(Lcom/android/camera/ui/PieRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->post(Ljava/lang/Runnable;)Z

    .line 1131
    return-void
.end method
