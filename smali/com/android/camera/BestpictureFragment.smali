.class public Lcom/android/camera/BestpictureFragment;
.super Landroid/app/Fragment;
.source "BestpictureFragment.java"


# static fields
.field public static final PARAM_IMAGE_NUM:Ljava/lang/String; = "image_num"

.field private static final TAG:Ljava/lang/String; = "BestpictureFilter"


# instance fields
.field private mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

.field private mImageNum:I

.field private mImageView:Landroid/widget/ImageView;

.field private mPictureSelectButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BestpictureFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/BestpictureFragment;->mImageNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/BestpictureFragment;)Lcom/android/camera/BestpictureActivity$ImageItems;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/BestpictureFragment;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/BestpictureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/BestpictureFragment;->initSelectButton()V

    return-void
.end method

.method public static create(ILcom/android/camera/BestpictureActivity$ImageItems;)Lcom/android/camera/BestpictureFragment;
    .locals 3
    .param p0, "imageNum"    # I
    .param p1, "items"    # Lcom/android/camera/BestpictureActivity$ImageItems;

    .prologue
    .line 49
    new-instance v1, Lcom/android/camera/BestpictureFragment;

    invoke-direct {v1}, Lcom/android/camera/BestpictureFragment;-><init>()V

    .line 50
    .local v1, "fragment":Lcom/android/camera/BestpictureFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "image_num"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/android/camera/BestpictureFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private initSelectButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/camera/BestpictureFragment;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    iget v1, p0, Lcom/android/camera/BestpictureFragment;->mImageNum:I

    invoke-virtual {v0, v1}, Lcom/android/camera/BestpictureActivity$ImageItems;->isChosen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/BestpictureFragment;->mPictureSelectButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/BestpictureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BestpictureFragment;->mPictureSelectButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/BestpictureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015d

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/BestpictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image_num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/BestpictureFragment;->mImageNum:I

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/BestpictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity;->getImageItems()Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BestpictureFragment;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0d0013

    .line 69
    const v1, 0x7f040002

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    .local v0, "rootView":Landroid/view/ViewGroup;
    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/BestpictureFragment;->mImageView:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/BestpictureFragment;->mPictureSelectButton:Landroid/widget/ImageView;

    .line 73
    iget-object v1, p0, Lcom/android/camera/BestpictureFragment;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    if-eqz v1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/camera/BestpictureFragment;->initSelectButton()V

    .line 75
    iget-object v1, p0, Lcom/android/camera/BestpictureFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/BestpictureFragment;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    iget v3, p0, Lcom/android/camera/BestpictureFragment;->mImageNum:I

    invoke-virtual {v2, v3}, Lcom/android/camera/BestpictureActivity$ImageItems;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/camera/BestpictureFragment$1;

    invoke-direct {v2, p0}, Lcom/android/camera/BestpictureFragment$1;-><init>(Lcom/android/camera/BestpictureFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BestpictureFragment;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 100
    return-void
.end method
