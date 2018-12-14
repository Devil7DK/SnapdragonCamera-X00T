.class final Lcom/android/camera/ui/FilmstripBottomControls$4;
.super Ljava/lang/Object;
.source "FilmstripBottomControls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmstripBottomControls;->setVisibility(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$view:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
