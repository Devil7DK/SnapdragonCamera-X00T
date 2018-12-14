.class public Lcom/android/camera/IconListPreference;
.super Lcom/android/camera/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mIconIds:[I

.field private mImageIds:[I

.field private mLargeIconIds:[I

.field private mSingleIconId:I

.field private mThumbnailIds:[I

.field private mUseSingleIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v2, Lorg/codeaurora/snapcam/R$styleable;->IconListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/IconListPreference;->mSingleIconId:I

    .line 44
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 46
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    .line 48
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    .line 50
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mThumbnailIds:[I

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconsRes"    # I

    .prologue
    .line 96
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 104
    :goto_0
    return-object v2

    .line 97
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 99
    .local v3, "n":I
    new-array v2, v3, [I

    .line 100
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 101
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/camera/IntArray;

    invoke-direct {v2}, Lcom/android/camera/IntArray;-><init>()V

    .line 111
    .local v2, "iconIds":Lcom/android/camera/IntArray;
    new-instance v4, Lcom/android/camera/IntArray;

    invoke-direct {v4}, Lcom/android/camera/IntArray;-><init>()V

    .line 112
    .local v4, "largeIconIds":Lcom/android/camera/IntArray;
    new-instance v3, Lcom/android/camera/IntArray;

    invoke-direct {v3}, Lcom/android/camera/IntArray;-><init>()V

    .line 113
    .local v3, "imageIds":Lcom/android/camera/IntArray;
    new-instance v6, Lcom/android/camera/IntArray;

    invoke-direct {v6}, Lcom/android/camera/IntArray;-><init>()V

    .line 115
    .local v6, "thumbnailIds":Lcom/android/camera/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v5, v0

    .local v5, "len":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 116
    aget-object v7, v0, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 117
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    aget v7, v7, v1

    invoke-virtual {v2, v7}, Lcom/android/camera/IntArray;->add(I)V

    .line 118
    :cond_0
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    aget v7, v7, v1

    invoke-virtual {v4, v7}, Lcom/android/camera/IntArray;->add(I)V

    .line 119
    :cond_1
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Lcom/android/camera/IntArray;->add(I)V

    .line 120
    :cond_2
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mThumbnailIds:[I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mThumbnailIds:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Lcom/android/camera/IntArray;->add(I)V

    .line 115
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_4
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/android/camera/IntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    invoke-virtual {v2, v7}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 124
    :cond_5
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    if-eqz v7, :cond_6

    .line 125
    invoke-virtual {v4}, Lcom/android/camera/IntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    invoke-virtual {v4, v7}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    .line 127
    :cond_6
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/android/camera/IntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    invoke-virtual {v3, v7}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    .line 128
    :cond_7
    iget-object v7, p0, Lcom/android/camera/IconListPreference;->mThumbnailIds:[I

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lcom/android/camera/IntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    invoke-virtual {v6, v7}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/IconListPreference;->mThumbnailIds:[I

    .line 129
    :cond_8
    invoke-super {p0, p1}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 130
    return-void
.end method

.method public getIconIds()[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getImageIds()[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    return-object v0
.end method

.method public getLargeIconIds()[I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    return-object v0
.end method

.method public getSingleIcon()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/camera/IconListPreference;->mSingleIconId:I

    return v0
.end method

.method public getThumbnailIds()[I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mThumbnailIds:[I

    return-object v0
.end method

.method public getUseSingleIcon()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/camera/IconListPreference;->mUseSingleIcon:Z

    return v0
.end method

.method public setIconIds([I)V
    .locals 0
    .param p1, "iconIds"    # [I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 81
    return-void
.end method

.method public setLargeIconIds([I)V
    .locals 0
    .param p1, "largeIconIds"    # [I

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    .line 85
    return-void
.end method

.method public setThumbnailIds([I)V
    .locals 0
    .param p1, "thumbnailIds"    # [I

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/IconListPreference;->mThumbnailIds:[I

    .line 89
    return-void
.end method

.method public setUseSingleIcon(Z)V
    .locals 0
    .param p1, "useSingle"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/IconListPreference;->mUseSingleIcon:Z

    .line 93
    return-void
.end method
