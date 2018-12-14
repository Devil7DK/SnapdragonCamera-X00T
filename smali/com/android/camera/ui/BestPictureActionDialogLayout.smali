.class public Lcom/android/camera/ui/BestPictureActionDialogLayout;
.super Landroid/widget/RelativeLayout;
.source "BestPictureActionDialogLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;
    }
.end annotation


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

.field private mNativeBt:Landroid/widget/Button;

.field private mOKButton:Landroid/widget/Button;

.field private mPositiveBt:Landroid/widget/Button;

.field private mTitleText:Landroid/widget/TextView;

.field mode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/BestPictureActionDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/BestPictureActionDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method private setViewData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v1}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v1}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mNativeBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v1}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->getNativeButtonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mPositiveBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v1}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->getPositionButtonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mNativeBt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mPositiveBt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BestPictureActionDialogLayout;->invalidate()V

    .line 114
    return-void

    .line 106
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mode:I

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v1}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->getOKButtonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mNativeBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mPositiveBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v0}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->doClickPositionBtAction()V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v0}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->doClickNativeBtAction()V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    invoke-interface {v0}, Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;->doClickOKBtAction()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f0d0009
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDialogDataControler(Landroid/view/View;Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "dialogDataControler"    # Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mode:I

    .line 85
    const v0, 0x7f0d0004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mTitleText:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0d0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mContent:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0d0009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mNativeBt:Landroid/widget/Button;

    .line 88
    const v0, 0x7f0d000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mPositiveBt:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mNativeBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mPositiveBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f0d000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mOKButton:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object p2, p0, Lcom/android/camera/ui/BestPictureActionDialogLayout;->mDialogDataControler:Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;

    .line 94
    invoke-direct {p0}, Lcom/android/camera/ui/BestPictureActionDialogLayout;->setViewData()V

    .line 95
    return-void
.end method
