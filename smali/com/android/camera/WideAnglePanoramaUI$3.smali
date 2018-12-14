.class Lcom/android/camera/WideAnglePanoramaUI$3;
.super Ljava/lang/Object;
.source "WideAnglePanoramaUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaUI;->setViews(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI$3;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$3;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$300(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/WideAnglePanoramaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->cancelHighResStitching()V

    .line 506
    return-void
.end method
