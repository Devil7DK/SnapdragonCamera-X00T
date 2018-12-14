.class Lcom/android/camera/BestpictureActivity$ImageItems;
.super Ljava/lang/Object;
.source "BestpictureActivity.java"

# interfaces
.implements Lcom/android/camera/ui/DotsViewItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BestpictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageItems"
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/BestpictureActivity;

.field private mBitmap:[Landroid/graphics/Bitmap;

.field private mChosen:[Z


# direct methods
.method public constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/BestpictureActivity;

    .prologue
    const/16 v2, 0xa

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mBitmap:[Landroid/graphics/Bitmap;

    .line 116
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 118
    if-nez v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 117
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mActivity:Lcom/android/camera/BestpictureActivity;

    .line 125
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/BestpictureActivity$ImageItems;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity$ImageItems;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    return-object v0
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTotalItemNums()I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0xa

    return v0
.end method

.method public isChosen(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public setBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mBitmap:[Landroid/graphics/Bitmap;

    aput-object p2, v0, p1

    .line 133
    return-void
.end method

.method public toggleImageSelection(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    iget-object v5, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    aput-boolean v2, v5, p1

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "isChosen":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    aget-boolean v2, v2, v0

    or-int/2addr v1, v2

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "isChosen":Z
    :cond_0
    move v2, v4

    .line 145
    goto :goto_0

    .line 150
    .restart local v0    # "i":I
    .restart local v1    # "isChosen":Z
    :cond_1
    if-nez v1, :cond_2

    .line 151
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mChosen:[Z

    aput-boolean v3, v2, p1

    .line 152
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mActivity:Lcom/android/camera/BestpictureActivity;

    iget-object v3, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mActivity:Lcom/android/camera/BestpictureActivity;

    .line 153
    invoke-virtual {v3}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e0280

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$ImageItems;->mActivity:Lcom/android/camera/BestpictureActivity;

    invoke-static {v2}, Lcom/android/camera/BestpictureActivity;->access$000(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/ui/DotsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DotsView;->update()V

    .line 157
    return-void
.end method
