.class public Lcom/android/camera/ui/FilmstripBottomControls;
.super Landroid/widget/RelativeLayout;
.source "FilmstripBottomControls.java"

# interfaces
.implements Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;
    }
.end annotation


# instance fields
.field private mEditButton:Landroid/widget/ImageButton;

.field private mListener:Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;

.field private mTinyPlanetButton:Landroid/widget/ImageButton;

.field private mViewPhotoSphereButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FilmstripBottomControls;)Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmstripBottomControls;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mListener:Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;

    return-object v0
.end method

.method private static setVisibility(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .prologue
    .line 134
    new-instance v0, Lcom/android/camera/ui/FilmstripBottomControls$4;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/FilmstripBottomControls$4;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FilmstripBottomControls;->setVisibility(I)V

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f0d005e

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FilmstripBottomControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mEditButton:Landroid/widget/ImageButton;

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mEditButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/ui/FilmstripBottomControls$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilmstripBottomControls$1;-><init>(Lcom/android/camera/ui/FilmstripBottomControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0d005f

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FilmstripBottomControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mViewPhotoSphereButton:Landroid/widget/ImageButton;

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mViewPhotoSphereButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/ui/FilmstripBottomControls$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilmstripBottomControls$2;-><init>(Lcom/android/camera/ui/FilmstripBottomControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0d0060

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FilmstripBottomControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mTinyPlanetButton:Landroid/widget/ImageButton;

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mTinyPlanetButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/ui/FilmstripBottomControls$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilmstripBottomControls$3;-><init>(Lcom/android/camera/ui/FilmstripBottomControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public setEditButtonVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mEditButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/android/camera/ui/FilmstripBottomControls;->setVisibility(Landroid/view/View;Z)V

    .line 114
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mListener:Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;

    .line 107
    return-void
.end method

.method public setTinyPlanetButtonVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mTinyPlanetButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/android/camera/ui/FilmstripBottomControls;->setVisibility(Landroid/view/View;Z)V

    .line 128
    return-void
.end method

.method public setViewPhotoSphereButtonVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls;->mViewPhotoSphereButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/android/camera/ui/FilmstripBottomControls;->setVisibility(Landroid/view/View;Z)V

    .line 121
    return-void
.end method
