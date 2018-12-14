.class Lcom/android/camera/CameraActivity$CircularDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircularDrawable"
.end annotation


# instance fields
.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private mLength:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 947
    iput-object p1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 948
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 949
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 950
    .local v4, "h":I
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 951
    .local v8, "targetSize":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v8, :cond_0

    .line 952
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 953
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 954
    .local v7, "scale":F
    if-le v3, v4, :cond_1

    .line 955
    int-to-float v0, v8

    int-to-float v2, v4

    div-float v7, v0, v2

    .line 959
    :goto_0
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    .line 960
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 961
    int-to-float v0, v3

    mul-float/2addr v0, v7

    float-to-int v3, v0

    .line 962
    int-to-float v0, v4

    mul-float/2addr v0, v7

    float-to-int v4, v0

    .line 964
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "scale":F
    :cond_0
    if-le v3, v4, :cond_2

    .line 965
    iput v4, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    .line 966
    sub-int v0, v3, v4

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0, v1, v4, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 974
    :goto_1
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 975
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    .line 976
    iget-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 977
    return-void

    .line 957
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "scale":F
    :cond_1
    int-to-float v0, v8

    int-to-float v2, v3

    div-float v7, v0, v2

    goto :goto_0

    .line 967
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "scale":F
    :cond_2
    if-ge v3, v4, :cond_3

    .line 968
    iput v3, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    .line 969
    sub-int v0, v4, v3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2, v1, v0, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 971
    :cond_3
    iput v3, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 987
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 989
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1013
    iget v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 993
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 981
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 982
    iput-object p1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    .line 983
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 999
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1004
    return-void
.end method
