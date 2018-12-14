.class public Lcom/android/camera/RefocusActivity;
.super Landroid/app/Activity;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/RefocusActivity$Indicator;,
        Lcom/android/camera/RefocusActivity$DepthMap;,
        Lcom/android/camera/RefocusActivity$LoadImageTask;,
        Lcom/android/camera/RefocusActivity$SaveImageTask;
    }
.end annotation


# static fields
.field public static final MAP_ROTATED:I = 0x1

.field private static final NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RefocusActivity"


# instance fields
.field private mAllInFocusView:Landroid/view/View;

.field private mCurrentImage:I

.field private mDepthMap:Lcom/android/camera/RefocusActivity$DepthMap;

.field private mFilesPath:Ljava/lang/String;

.field private mHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIndicator:Lcom/android/camera/RefocusActivity$Indicator;

.field private mLoadImageTask:Lcom/android/camera/RefocusActivity$LoadImageTask;

.field private mMapRotated:Z

.field private mOrientation:I

.field private mRequestedImage:I

.field private mSecureCamera:Z

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AllFocusImage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/RefocusActivity;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput v0, p0, Lcom/android/camera/RefocusActivity;->mCurrentImage:I

    .line 87
    iput v0, p0, Lcom/android/camera/RefocusActivity;->mRequestedImage:I

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/RefocusActivity;->mMapRotated:Z

    .line 90
    iput v1, p0, Lcom/android/camera/RefocusActivity;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$DepthMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mDepthMap:Lcom/android/camera/RefocusActivity$DepthMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$DepthMap;)Lcom/android/camera/RefocusActivity$DepthMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;
    .param p1, "x1"    # Lcom/android/camera/RefocusActivity$DepthMap;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/RefocusActivity;->mDepthMap:Lcom/android/camera/RefocusActivity$DepthMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/RefocusActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mFilesPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/RefocusActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/RefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/RefocusActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/RefocusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/RefocusActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/RefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/RefocusActivity;->mWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/RefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/RefocusActivity;->mHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/RefocusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/camera/RefocusActivity;->mMapRotated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/RefocusActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$Indicator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mIndicator:Lcom/android/camera/RefocusActivity$Indicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/RefocusActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/RefocusActivity;->setCurrentImage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/RefocusActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mAllInFocusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/RefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/RefocusActivity;->allInFocus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/RefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/RefocusActivity;->mRequestedImage:I

    return v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/camera/RefocusActivity;->NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method private allInFocus()V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/android/camera/RefocusActivity;->NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/RefocusActivity;->setCurrentImage(I)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mAllInFocusView:Landroid/view/View;

    const v1, 0x7f02016a

    invoke-virtual {p0, v1}, Lcom/android/camera/RefocusActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    return-void
.end method

.method private setCurrentImage(I)V
    .locals 5
    .param p1, "depth"    # I

    .prologue
    const/4 v2, 0x1

    .line 193
    if-ltz p1, :cond_1

    sget-object v0, Lcom/android/camera/RefocusActivity;->NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/camera/RefocusActivity;->mRequestedImage:I

    if-eq p1, v0, :cond_1

    .line 194
    iput p1, p0, Lcom/android/camera/RefocusActivity;->mRequestedImage:I

    .line 195
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mLoadImageTask:Lcom/android/camera/RefocusActivity$LoadImageTask;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mLoadImageTask:Lcom/android/camera/RefocusActivity$LoadImageTask;

    invoke-virtual {v0, v2}, Lcom/android/camera/RefocusActivity$LoadImageTask;->cancel(Z)Z

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/camera/RefocusActivity;->mCurrentImage:I

    if-eq p1, v0, :cond_1

    .line 199
    iput p1, p0, Lcom/android/camera/RefocusActivity;->mCurrentImage:I

    .line 200
    new-instance v0, Lcom/android/camera/RefocusActivity$LoadImageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/RefocusActivity$LoadImageTask;-><init>(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$1;)V

    iput-object v0, p0, Lcom/android/camera/RefocusActivity;->mLoadImageTask:Lcom/android/camera/RefocusActivity$LoadImageTask;

    .line 201
    iget-object v0, p0, Lcom/android/camera/RefocusActivity;->mLoadImageTask:Lcom/android/camera/RefocusActivity$LoadImageTask;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/RefocusActivity;->mFilesPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/RefocusActivity;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/RefocusActivity$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/RefocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/RefocusActivity;->mUri:Landroid/net/Uri;

    .line 99
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 101
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    :cond_0
    iput-boolean v8, p0, Lcom/android/camera/RefocusActivity;->mSecureCamera:Z

    .line 107
    :goto_0
    iget-boolean v6, p0, Lcom/android/camera/RefocusActivity;->mSecureCamera:Z

    if-eqz v6, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 110
    .local v5, "win":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 111
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 112
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 114
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "win":Landroid/view/Window;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/RefocusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/RefocusActivity;->mFilesPath:Ljava/lang/String;

    .line 115
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    if-eq v6, v8, :cond_2

    iget-boolean v6, p0, Lcom/android/camera/RefocusActivity;->mSecureCamera:Z

    if-eqz v6, :cond_3

    .line 116
    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/RefocusActivity;->mMapRotated:Z

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/RefocusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Ubifocus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/RefocusActivity;->mFilesPath:Ljava/lang/String;

    .line 120
    :cond_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/camera/RefocusActivity$1;

    invoke-direct {v7, p0}, Lcom/android/camera/RefocusActivity$1;-><init>(Lcom/android/camera/RefocusActivity;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 127
    const v6, 0x7f04002c

    invoke-virtual {p0, v6}, Lcom/android/camera/RefocusActivity;->setContentView(I)V

    .line 128
    const v6, 0x7f0d00bb

    invoke-virtual {p0, v6}, Lcom/android/camera/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/RefocusActivity$Indicator;

    iput-object v6, p0, Lcom/android/camera/RefocusActivity;->mIndicator:Lcom/android/camera/RefocusActivity$Indicator;

    .line 130
    const v6, 0x7f0d00b7

    invoke-virtual {p0, v6}, Lcom/android/camera/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/RefocusActivity;->mImageView:Landroid/widget/ImageView;

    .line 131
    iget-object v6, p0, Lcom/android/camera/RefocusActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/camera/RefocusActivity$2;

    invoke-direct {v7, p0}, Lcom/android/camera/RefocusActivity$2;-><init>(Lcom/android/camera/RefocusActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    const v6, 0x7f0d00b9

    invoke-virtual {p0, v6}, Lcom/android/camera/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/RefocusActivity;->mAllInFocusView:Landroid/view/View;

    .line 155
    iget-object v6, p0, Lcom/android/camera/RefocusActivity;->mAllInFocusView:Landroid/view/View;

    new-instance v7, Lcom/android/camera/RefocusActivity$3;

    invoke-direct {v7, p0}, Lcom/android/camera/RefocusActivity$3;-><init>(Lcom/android/camera/RefocusActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v6, 0x7f0d00b8

    invoke-virtual {p0, v6}, Lcom/android/camera/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/camera/RefocusActivity$4;

    invoke-direct {v7, p0}, Lcom/android/camera/RefocusActivity$4;-><init>(Lcom/android/camera/RefocusActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v6, 0x7f0d00ba

    invoke-virtual {p0, v6}, Lcom/android/camera/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/camera/RefocusActivity$5;

    invoke-direct {v7, p0}, Lcom/android/camera/RefocusActivity$5;-><init>(Lcom/android/camera/RefocusActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/RefocusActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 184
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 185
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 186
    iget v6, v4, Landroid/graphics/Point;->x:I

    iput v6, p0, Lcom/android/camera/RefocusActivity;->mWidth:I

    .line 187
    iget v6, v4, Landroid/graphics/Point;->y:I

    iput v6, p0, Lcom/android/camera/RefocusActivity;->mHeight:I

    .line 189
    invoke-direct {p0}, Lcom/android/camera/RefocusActivity;->allInFocus()V

    .line 190
    return-void

    .line 104
    .end local v1    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_4
    const-string v6, "secure_camera"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/RefocusActivity;->mSecureCamera:Z

    goto/16 :goto_0
.end method
