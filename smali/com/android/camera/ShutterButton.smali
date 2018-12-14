.class public Lcom/android/camera/ShutterButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ShutterButton$OnShutterButtonListener;,
        Lcom/android/camera/ShutterButton$LongClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mLongClick:Lcom/android/camera/ShutterButton$LongClickListener;

.field private mOldPressed:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    .line 45
    new-instance v0, Lcom/android/camera/ShutterButton$LongClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ShutterButton$LongClickListener;-><init>(Lcom/android/camera/ShutterButton;Lcom/android/camera/ShutterButton$1;)V

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mLongClick:Lcom/android/camera/ShutterButton$LongClickListener;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ShutterButton;)Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->drawableStateChanged()V

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 96
    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 97
    if-nez v0, :cond_1

    .line 119
    new-instance v1, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 128
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    .line 130
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public enableTouch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/camera/ShutterButton;->setLongClickable(Z)V

    .line 85
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 141
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 144
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 70
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mLongClick:Lcom/android/camera/ShutterButton$LongClickListener;

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    return-void
.end method
