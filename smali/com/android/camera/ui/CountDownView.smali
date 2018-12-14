.class public Lcom/android/camera/ui/CountDownView;
.super Landroid/widget/FrameLayout;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CountDownView$MainHandler;,
        Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;
    }
.end annotation


# static fields
.field private static final SET_TIMER_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CAM_CountDownView"

.field private static mBeepOnce:I

.field private static mBeepTwice:I

.field private static mSoundPool:Landroid/media/SoundPool;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountDownAnim:Landroid/view/animation/Animation;

.field private mCountDownTitle:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

.field private mPlaySound:Z

.field private mRemainingSecondsView:Landroid/widget/TextView;

.field private mRemainingSecs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v1, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    .line 44
    iput v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 51
    new-instance v0, Lcom/android/camera/ui/CountDownView$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/CountDownView$MainHandler;-><init>(Lcom/android/camera/ui/CountDownView;Lcom/android/camera/ui/CountDownView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/camera/ui/CountDownView;->mContext:Landroid/content/Context;

    .line 56
    const/high16 v0, 0x7f050000

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    .line 58
    sget-object v0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    .line 65
    :goto_0
    sget-object v0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f070001

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/android/camera/ui/CountDownView;->mBeepOnce:I

    .line 66
    sget-object v0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f070002

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/android/camera/ui/CountDownView;->mBeepTwice:I

    .line 68
    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CountDownView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CountDownView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CountDownView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    return-void
.end method

.method private remainingSecondsChanged(I)V
    .locals 10
    .param p1, "newVal"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    iput p1, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 80
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;->onCountDownFinished()V

    .line 104
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 86
    .local v7, "locale":Ljava/util/Locale;
    const-string v0, "%d"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v7, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "localizedValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-boolean v0, p0, Lcom/android/camera/ui/CountDownView;->mPlaySound:Z

    if-eqz v0, :cond_1

    .line 95
    if-ne p1, v9, :cond_2

    .line 96
    sget-object v0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/android/camera/ui/CountDownView;->mBeepTwice:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 102
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 98
    sget-object v0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/android/camera/ui/CountDownView;->mBeepOnce:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0095

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 109
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    .line 111
    return-void
.end method

.method public setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    .line 125
    return-void
.end method

.method public setOrientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 155
    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    neg-int v5, p1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setRotation(F)V

    .line 156
    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    neg-int v5, p1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setRotation(F)V

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 159
    .local v2, "height":I
    if-nez v2, :cond_0

    .line 160
    invoke-virtual {p0, v6, v6}, Lcom/android/camera/ui/CountDownView;->measure(II)V

    .line 161
    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 163
    :cond_0
    const/4 v0, 0x0

    .local v0, "dx":I
    const/4 v1, 0x0

    .line 164
    .local v1, "dy":I
    sparse-switch p1, :sswitch_data_0

    .line 177
    :goto_0
    :sswitch_0
    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 178
    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mCountDownTitle:Landroid/widget/TextView;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 179
    return-void

    .line 166
    :sswitch_1
    sub-int v4, v3, v2

    div-int/lit8 v1, v4, 0x2

    .line 167
    neg-int v0, v1

    .line 168
    goto :goto_0

    .line 170
    :sswitch_2
    sub-int v4, v3, v2

    div-int/lit8 v1, v4, 0x2

    move v0, v1

    .line 171
    goto :goto_0

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public startCountDown(IZ)V
    .locals 3
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .prologue
    .line 128
    if-gtz p1, :cond_0

    .line 129
    const-string v0, "CAM_CountDownView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input for countdown timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 133
    iput-boolean p2, p0, Lcom/android/camera/ui/CountDownView;->mPlaySound:Z

    .line 134
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    goto :goto_0
.end method
