.class public Lcom/android/camera/SceneModeActivity;
.super Landroid/app/Activity;
.source "SceneModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SceneModeActivity$PageItems;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/camera/MyPagerAdapter;

.field private mButton:Lcom/android/camera/ui/RotateImageView;

.field private mCloseButton:Landroid/view/View;

.field private mCurrentScene:I

.field private mDotsView:Lcom/android/camera/ui/DotsView;

.field private mElemPerPage:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mNumElement:I

.field private mNumPage:I

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private mThumbnails:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/camera/SceneModeActivity;->mElemPerPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SceneModeActivity;)Lcom/android/camera/ui/DotsView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SceneModeActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/SceneModeActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    return-object v0
.end method

.method private setShowInLockScreen()V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/camera/SceneModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 187
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 188
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 189
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/SceneModeActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getCurrentScene()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/camera/SceneModeActivity;->mCurrentScene:I

    return v0
.end method

.method public getElmentPerPage()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/camera/SceneModeActivity;->mElemPerPage:I

    return v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/SceneModeActivity;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNumberOfElement()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/SceneModeActivity;->mNumElement:I

    return v0
.end method

.method public getNumberOfPage()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/camera/SceneModeActivity;->mNumPage:I

    return v0
.end method

.method public getThumbnails()[I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/SceneModeActivity;->mThumbnails:[I

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/SceneModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_secure_camera"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "isSecureCamera":Z
    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/camera/SceneModeActivity;->setShowInLockScreen()V

    .line 97
    :cond_0
    const v3, 0x7f040036

    invoke-virtual {p0, v3}, Lcom/android/camera/SceneModeActivity;->setContentView(I)V

    .line 98
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 101
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/SceneModeActivity;->mCurrentScene:I

    .line 103
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 105
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/SettingsManager;->getResource(Ljava/lang/String;I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mThumbnails:[I

    .line 108
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mThumbnails:[I

    array-length v3, v3

    iput v3, p0, Lcom/android/camera/SceneModeActivity;->mNumElement:I

    .line 109
    iget v3, p0, Lcom/android/camera/SceneModeActivity;->mNumElement:I

    iget v4, p0, Lcom/android/camera/SceneModeActivity;->mElemPerPage:I

    div-int v2, v3, v4

    .line 110
    .local v2, "pages":I
    iget v3, p0, Lcom/android/camera/SceneModeActivity;->mNumElement:I

    iget v4, p0, Lcom/android/camera/SceneModeActivity;->mElemPerPage:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 111
    :cond_1
    iput v2, p0, Lcom/android/camera/SceneModeActivity;->mNumPage:I

    .line 113
    new-instance v3, Lcom/android/camera/MyPagerAdapter;

    invoke-direct {v3, p0}, Lcom/android/camera/MyPagerAdapter;-><init>(Lcom/android/camera/SceneModeActivity;)V

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mAdapter:Lcom/android/camera/MyPagerAdapter;

    .line 115
    const v3, 0x7f0d00dc

    invoke-virtual {p0, v3}, Lcom/android/camera/SceneModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 116
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    .line 117
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/camera/SceneModeActivity;->mAdapter:Lcom/android/camera/MyPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 119
    const v3, 0x7f0d00db

    invoke-virtual {p0, v3}, Lcom/android/camera/SceneModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mCloseButton:Landroid/view/View;

    .line 120
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mCloseButton:Landroid/view/View;

    new-instance v4, Lcom/android/camera/SceneModeActivity$1;

    invoke-direct {v4, p0}, Lcom/android/camera/SceneModeActivity$1;-><init>(Lcom/android/camera/SceneModeActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mAdapter:Lcom/android/camera/MyPagerAdapter;

    invoke-virtual {v3}, Lcom/android/camera/MyPagerAdapter;->getCount()I

    move-result v1

    .line 128
    .local v1, "pageCount":I
    const v3, 0x7f0d00dd

    invoke-virtual {p0, v3}, Lcom/android/camera/SceneModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/DotsView;

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    .line 129
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcom/android/camera/SceneModeActivity;->mCurrentScene:I

    iget v5, p0, Lcom/android/camera/SceneModeActivity;->mElemPerPage:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 130
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    iget v4, p0, Lcom/android/camera/SceneModeActivity;->mCurrentScene:I

    iget v5, p0, Lcom/android/camera/SceneModeActivity;->mElemPerPage:I

    div-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/DotsView;->update(IF)V

    .line 131
    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    new-instance v4, Lcom/android/camera/SceneModeActivity$PageItems;

    invoke-direct {v4, v1}, Lcom/android/camera/SceneModeActivity$PageItems;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/DotsView;->setItems(Lcom/android/camera/ui/DotsViewItem;)V

    .line 133
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/android/camera/SceneModeActivity$2;

    invoke-direct {v4, p0}, Lcom/android/camera/SceneModeActivity$2;-><init>(Lcom/android/camera/SceneModeActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 143
    :goto_0
    const v3, 0x7f0d00de

    invoke-virtual {p0, v3}, Lcom/android/camera/SceneModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateImageView;

    iput-object v3, p0, Lcom/android/camera/SceneModeActivity;->mButton:Lcom/android/camera/ui/RotateImageView;

    .line 144
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v4, Lcom/android/camera/SceneModeActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/SceneModeActivity$3;-><init>(Lcom/android/camera/SceneModeActivity;Z)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void

    .line 140
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SceneModeActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/DotsView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/SceneModeActivity;->finish()V

    .line 196
    return-void
.end method
