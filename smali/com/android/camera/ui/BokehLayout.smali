.class public Lcom/android/camera/ui/BokehLayout;
.super Lcom/android/camera/ui/RotatableLayout;
.source "BokehLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BokehLayout"


# instance fields
.field private mBokeh:Lcom/android/camera/ui/RotateLayout;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mlocationy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/BokehLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 74
    iput-object p1, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private toIndex(Landroid/view/View;III)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 95
    .local v8, "tw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 96
    .local v7, "th":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 97
    .local v0, "b":I
    const/4 v1, 0x0

    .line 98
    .local v1, "cx":I
    const/4 v2, 0x0

    .line 99
    .local v2, "cy":I
    sparse-switch p4, :sswitch_data_0

    .line 121
    :goto_0
    div-int/lit8 v9, v8, 0x2

    sub-int v3, v1, v9

    .line 122
    div-int/lit8 v9, v8, 0x2

    add-int v5, v1, v9

    .line 123
    div-int/lit8 v9, v7, 0x2

    sub-int v6, v2, v9

    .line 124
    div-int/lit8 v9, v7, 0x2

    add-int v0, v2, v9

    .line 125
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 126
    return-void

    .line 101
    :sswitch_0
    const/16 v1, 0x21c

    .line 102
    const/16 v2, 0xf0

    .line 103
    goto :goto_0

    .line 106
    :sswitch_1
    const/16 v1, 0x5a

    .line 107
    iget v2, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 108
    goto :goto_0

    .line 111
    :sswitch_2
    const/16 v1, 0x21c

    .line 112
    const/16 v2, 0xf0

    .line 113
    goto :goto_0

    .line 116
    :sswitch_3
    const/16 v1, 0x3de

    .line 117
    iget v2, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 143
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BokehLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    .line 144
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 84
    sub-int/2addr p4, p2

    .line 85
    sub-int/2addr p5, p3

    .line 86
    const/4 p2, 0x0

    .line 87
    const/4 p3, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    iget v3, p0, Lcom/android/camera/ui/BokehLayout;->mOrientation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/BokehLayout;->toIndex(Landroid/view/View;III)V

    .line 89
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 128
    iput p1, p0, Lcom/android/camera/ui/BokehLayout;->mOrientation:I

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 131
    return-void
.end method

.method public setSizeY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 133
    const/16 v0, 0x5a0

    if-ne v0, p1, :cond_0

    .line 134
    const/16 v0, 0x384

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0
.end method
