.class Lcom/android/camera/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanoProgressBar"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private final mDoneAreaPaint:Landroid/graphics/Paint;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mOldProgress:I

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 33
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 34
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 35
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 36
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 37
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 38
    iput v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 47
    iput v1, p0, Lcom/android/camera/PanoProgressBar;->mOldProgress:I

    .line 55
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 65
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 73
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 74
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 180
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_0

    .line 182
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 188
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 189
    .local v1, "l":F
    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 194
    .local v3, "r":F
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    .end local v1    # "l":F
    .end local v3    # "r":F
    :cond_0
    return-void

    .line 191
    :cond_1
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 192
    .restart local v1    # "l":F
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3    # "r":F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 103
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    .line 104
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    .line 105
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 170
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 171
    iput v1, p0, Lcom/android/camera/PanoProgressBar;->mOldProgress:I

    .line 172
    invoke-direct {p0, v1}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 174
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 89
    return-void
.end method

.method public setDoneColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 94
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 99
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .param p1, "w"    # F

    .prologue
    .line 113
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 115
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 109
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 110
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 69
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x1

    .line 135
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 136
    if-le p1, v2, :cond_2

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 144
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mOldProgress:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 138
    :cond_2
    const/16 v0, -0xa

    if-ge p1, v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0

    .line 149
    :cond_3
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_6

    .line 150
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 152
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 153
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 155
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 157
    :cond_4
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_5

    .line 159
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 163
    :cond_6
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mOldProgress:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mOldProgress:I

    goto :goto_1
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .param p1, "rightIncreasing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 120
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 121
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 130
    return-void

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 125
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 126
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
