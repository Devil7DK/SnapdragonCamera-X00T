.class Lcom/android/camera/ui/FilmstripBottomControls$1;
.super Ljava/lang/Object;
.source "FilmstripBottomControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmstripBottomControls;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmstripBottomControls;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmstripBottomControls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmstripBottomControls;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/ui/FilmstripBottomControls$1;->this$0:Lcom/android/camera/ui/FilmstripBottomControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls$1;->this$0:Lcom/android/camera/ui/FilmstripBottomControls;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripBottomControls;->access$000(Lcom/android/camera/ui/FilmstripBottomControls;)Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls$1;->this$0:Lcom/android/camera/ui/FilmstripBottomControls;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripBottomControls;->access$000(Lcom/android/camera/ui/FilmstripBottomControls;)Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;->onEdit()V

    .line 76
    :cond_0
    return-void
.end method
