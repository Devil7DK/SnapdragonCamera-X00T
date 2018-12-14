.class Lcom/android/camera/MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SceneModeActivity.java"


# instance fields
.field private mActivity:Lcom/android/camera/SceneModeActivity;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/camera/SceneModeActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/camera/SceneModeActivity;

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/camera/MyPagerAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MyPagerAdapter;)Lcom/android/camera/SceneModeActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MyPagerAdapter;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/MyPagerAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 235
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/MyPagerAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v0}, Lcom/android/camera/SceneModeActivity;->getNumberOfPage()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/camera/MyPagerAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v1}, Lcom/android/camera/SceneModeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/MyPagerAdapter;->mRootView:Landroid/view/ViewGroup;

    .line 210
    iget-object v1, p0, Lcom/android/camera/MyPagerAdapter;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d00cf

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 211
    .local v0, "mGridView":Landroid/widget/GridView;
    new-instance v1, Lcom/android/camera/GridAdapter;

    iget-object v2, p0, Lcom/android/camera/MyPagerAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-direct {v1, v2, p2}, Lcom/android/camera/GridAdapter;-><init>(Lcom/android/camera/SceneModeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/MyPagerAdapter;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    new-instance v1, Lcom/android/camera/MyPagerAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/camera/MyPagerAdapter$1;-><init>(Lcom/android/camera/MyPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/android/camera/MyPagerAdapter;->mRootView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 244
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
