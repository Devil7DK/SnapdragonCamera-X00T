.class public Lcom/android/camera/PauseButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "PauseButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PauseButton$OnPauseButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/PauseButton$OnPauseButtonListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PauseButton;->setClickable(Z)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PauseButton;->setSelected(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 65
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/camera/PauseButton;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/PauseButton;->setSelected(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/camera/PauseButton;->mListener:Lcom/android/camera/PauseButton$OnPauseButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PauseButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/camera/PauseButton;->mListener:Lcom/android/camera/PauseButton$OnPauseButtonListener;

    invoke-interface {v1}, Lcom/android/camera/PauseButton$OnPauseButtonListener;->onButtonContinue()V

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/PauseButton;->setSelected(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/PauseButton;->mListener:Lcom/android/camera/PauseButton$OnPauseButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PauseButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/camera/PauseButton;->mListener:Lcom/android/camera/PauseButton$OnPauseButtonListener;

    invoke-interface {v1}, Lcom/android/camera/PauseButton$OnPauseButtonListener;->onButtonPause()V

    goto :goto_0
.end method

.method public setOnPauseButtonListener(Lcom/android/camera/PauseButton$OnPauseButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/PauseButton$OnPauseButtonListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/PauseButton;->mListener:Lcom/android/camera/PauseButton$OnPauseButtonListener;

    .line 81
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/camera/PauseButton;->setSelected(Z)V

    .line 60
    return-void
.end method
