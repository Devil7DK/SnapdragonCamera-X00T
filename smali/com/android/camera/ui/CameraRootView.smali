.class public Lcom/android/camera/ui/CameraRootView;
.super Landroid/widget/FrameLayout;
.source "CameraRootView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraRootView$MyDisplayListener;
    }
.end annotation


# instance fields
.field private mBottomMargin:I

.field private final mCurrentInsets:Landroid/graphics/Rect;

.field private mDisplayListener:Ljava/lang/Object;

.field private mLeftMargin:I

.field private mListener:Lcom/android/camera/ui/CameraRootView$MyDisplayListener;

.field private mOffset:I

.field private mRightMargin:I

.field private mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v1, p0, Lcom/android/camera/ui/CameraRootView;->mTopMargin:I

    .line 37
    iput v1, p0, Lcom/android/camera/ui/CameraRootView;->mBottomMargin:I

    .line 38
    iput v1, p0, Lcom/android/camera/ui/CameraRootView;->mLeftMargin:I

    .line 39
    iput v1, p0, Lcom/android/camera/ui/CameraRootView;->mRightMargin:I

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lcom/android/camera/ui/CameraRootView;->mOffset:I

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRootView;->initDisplayListener()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraRootView;)Lcom/android/camera/ui/CameraRootView$MyDisplayListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraRootView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/CameraRootView;->mListener:Lcom/android/camera/ui/CameraRootView$MyDisplayListener;

    return-object v0
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return v1

    .line 63
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/CameraRootView;->mOffset:I

    if-nez v0, :cond_1

    .line 64
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_2

    .line 65
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/camera/ui/CameraRootView;->mOffset:I

    .line 70
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRootView;->requestLayout()V

    goto :goto_0

    .line 66
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_1

    .line 67
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/camera/ui/CameraRootView;->mOffset:I

    goto :goto_1
.end method

.method public initDisplayListener()V
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/camera/ui/CameraRootView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraRootView$1;-><init>(Lcom/android/camera/ui/CameraRootView;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisplayListener:Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 107
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/camera/ui/CameraRootView;->mDisplayListener:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 116
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/camera/ui/CameraRootView;->mDisplayListener:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 118
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraRootView;->mListener:Lcom/android/camera/ui/CameraRootView$MyDisplayListener;

    .line 98
    return-void
.end method

.method public setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/CameraRootView$MyDisplayListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/CameraRootView;->mListener:Lcom/android/camera/ui/CameraRootView$MyDisplayListener;

    .line 102
    return-void
.end method
