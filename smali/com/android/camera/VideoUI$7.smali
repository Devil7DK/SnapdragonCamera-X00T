.class Lcom/android/camera/VideoUI$7;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoUI;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/camera/VideoUI$7;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/camera/VideoUI$7;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1200(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/VideoController;->onReviewPlayClicked(Landroid/view/View;)V

    .line 369
    return-void
.end method
