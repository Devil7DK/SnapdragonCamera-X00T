.class public Lcom/android/camera/ui/ProMode;
.super Landroid/view/View;
.source "ProMode.java"


# static fields
.field private static final BLUE:I = -0xb96c05

.field private static final DOT_SIZE:I = 0xa

.field private static final DRAG_X_THRESHOLD:I = 0x1e

.field private static final DRAG_Y_THRESHOLD:I = 0x64

.field public static final EXPOSURE_MODE:I = 0x0

.field public static final ISO_MODE:I = 0x3

.field public static final MANUAL_MODE:I = 0x1

.field public static final NO_MODE:I = -0x1

.field private static final SELECTED_DOT_SIZE:I = 0x14

.field private static final WB_ICON_SIZE:I = 0x50

.field public static final WHITE_BALANCE_MODE:I = 0x2

.field private static final wbIcons:[I

.field private static final wbIconsBlue:[I


# instance fields
.field private curveCoordinate:[F

.field private mAddedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mClickThreshold:F

.field private mContext:Landroid/content/Context;

.field private mCurveHeight:I

.field private mCurveLeft:I

.field private mCurveMeasure:Landroid/graphics/PathMeasure;

.field private mCurvePath:Landroid/graphics/Path;

.field private mCurveRight:I

.field private mCurveY:I

.field private mHeight:I

.field private mIndex:I

.field private mMode:I

.field private mNums:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/ViewGroup;

.field private mPoints:[Landroid/graphics/Point;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private mSlider:F

.field private mStride:I

.field private mUI:Lcom/android/camera/ui/OneUICameraControls;

.field private mWidth:I

.field private minFocus:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/ProMode;->wbIcons:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/ProMode;->wbIconsBlue:[I

    return-void

    .line 63
    :array_0
    .array-data 4
        0x7f020002
        0x7f02013f
        0x7f020045
        0x7f02018c
        0x7f020037
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f020003
        0x7f020140
        0x7f020046
        0x7f02018d
        0x7f020038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 98
    return-void
.end method

.method private currentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->getKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findButton(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    if-ge v1, v4, :cond_1

    .line 358
    iget-object v4, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 359
    .local v2, "xdiff":F
    iget-object v4, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 360
    .local v3, "ydiff":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    .line 361
    .local v0, "dist":F
    iget v4, p0, Lcom/android/camera/ui/ProMode;->mClickThreshold:F

    iget v5, p0, Lcom/android/camera/ui/ProMode;->mClickThreshold:F

    mul-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 363
    .end local v0    # "dist":F
    .end local v1    # "i":I
    .end local v2    # "xdiff":F
    .end local v3    # "ydiff":F
    :goto_1
    return v1

    .line 357
    .restart local v0    # "dist":F
    .restart local v1    # "i":I
    .restart local v2    # "xdiff":F
    .restart local v3    # "ydiff":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "dist":F
    .end local v2    # "xdiff":F
    .end local v3    # "ydiff":F
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 271
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 265
    :pswitch_1
    const-string v0, "pref_camera2_exposure_key"

    goto :goto_0

    .line 267
    :pswitch_2
    const-string v0, "pref_camera2_whitebalance_key"

    goto :goto_0

    .line 269
    :pswitch_3
    const-string v0, "pref_camera2_iso_key"

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSlider(FF)F
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 367
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    add-int/lit8 v0, v0, -0x1e

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x64

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 370
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float p1, v0

    .line 371
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float p1, v0

    .line 372
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 374
    :goto_0
    return v0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->init(I)V

    .line 102
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->init(I)V

    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->init(I)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    const/4 v1, 0x1

    const-string v2, "Manual"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method private init(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ProMode;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, "cc":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private removeViews()V
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 331
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    .line 337
    return-void
.end method

.method private setIndex(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 301
    iget v3, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    if-ne v3, p1, :cond_0

    if-nez p2, :cond_0

    .line 327
    :goto_0
    return-void

    .line 302
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    if-eq v3, v5, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 304
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 305
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    .line 314
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->currentKey()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 316
    .restart local v2    # "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 317
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "v":Landroid/view/View;
    const v3, -0xb96c05

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    invoke-virtual {v3, v1, v4}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V

    .line 324
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v3, v1}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    .local v0, "cc":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    iget v5, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    aget-object v5, v0, v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->invalidate()V

    goto :goto_0

    .line 306
    .end local v0    # "cc":[Ljava/lang/CharSequence;
    .end local v1    # "key":Ljava/lang/String;
    .restart local v2    # "v":Landroid/view/View;
    :cond_4
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 307
    iget v3, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-ne v3, v6, :cond_1

    .line 308
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "v":Landroid/view/View;
    sget-object v3, Lcom/android/camera/ui/ProMode;->wbIcons:[I

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 318
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "v":Landroid/view/View;
    :cond_5
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 319
    iget v3, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-ne v3, v6, :cond_2

    .line 320
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "v":Landroid/view/View;
    sget-object v3, Lcom/android/camera/ui/ProMode;->wbIconsBlue:[I

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private updateSlider(I)V
    .locals 7
    .param p1, "n"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    .line 280
    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ProMode;->mStride:I

    .line 281
    iget v2, p0, Lcom/android/camera/ui/ProMode;->mStride:I

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ProMode;->mClickThreshold:F

    .line 282
    iget v2, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    new-array v2, v2, [Landroid/graphics/Point;

    iput-object v2, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    .line 284
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 285
    .local v1, "slide":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    if-ge v0, v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    int-to-float v4, v0

    mul-float/2addr v4, v1

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 287
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->invalidate()V

    .line 291
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    return v0
.end method

.method public initialize(Lcom/android/camera/ui/OneUICameraControls;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/camera/ui/OneUICameraControls;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mParent:Landroid/view/ViewGroup;

    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    .line 151
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->init()V

    .line 152
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const v7, -0xb96c05

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, -0x1

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-eq v1, v4, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-ne v1, v8, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 132
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    :cond_1
    return-void

    .line 136
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    if-ge v0, v1, :cond_1

    .line 137
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    if-ne v0, v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 156
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 157
    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    .line 158
    sub-int v1, p5, p3

    iput v1, p0, Lcom/android/camera/ui/ProMode;->mHeight:I

    .line 160
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    .line 161
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    .line 162
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/android/camera/ui/ProMode;->mCurveHeight:I

    .line 163
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    .line 165
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 166
    .local v0, "cx":F
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mCurveHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 169
    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    .line 170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 341
    iget v2, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-ne v2, v4, :cond_1

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/ProMode;->getSlider(FF)F

    move-result v1

    .line 343
    .local v1, "slider":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ProMode;->setSlider(F)V

    .line 353
    .end local v1    # "slider":F
    :cond_0
    :goto_0
    return v4

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/ProMode;->findButton(FF)I

    move-result v0

    .line 348
    .local v0, "idx":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 349
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/ProMode;->setIndex(IZ)V

    goto :goto_0
.end method

.method public reinit()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->init()V

    .line 174
    return-void
.end method

.method public setMode(I)V
    .locals 12
    .param p1, "mode"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    .line 194
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->removeViews()V

    .line 195
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 196
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ProMode;->setVisibility(I)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ProMode;->setVisibility(I)V

    .line 201
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    .line 202
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->currentKey()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "key":Ljava/lang/String;
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 204
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v11, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 205
    invoke-virtual {v11}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/camera/SettingsManager;->getMinimumFocusDistance(I)F

    move-result v10

    iput v10, p0, Lcom/android/camera/ui/ProMode;->minFocus:F

    .line 206
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v11, "pref_camera2_focus_distance_key"

    invoke-virtual {v10, v11}, Lcom/android/camera/SettingsManager;->getFocusValue(Ljava/lang/String;)F

    move-result v9

    .line 207
    .local v9, "value":F
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/ProMode;->setSlider(F)V

    .line 208
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    iget v11, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int v7, v10, v11

    .line 209
    .local v7, "stride":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v10, 0x2

    if-ge v1, v10, :cond_6

    .line 210
    new-instance v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 211
    .local v8, "v":Landroid/widget/TextView;
    const-string v6, "infinity"

    .line 212
    .local v6, "s":Ljava/lang/String;
    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    const-string v6, "macro"

    .line 213
    :cond_2
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 216
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    .line 217
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-direct {v5, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 218
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    mul-int v11, v1, v7

    add-int/2addr v10, v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setX(F)V

    .line 220
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setY(F)V

    .line 221
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "i":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "stride":I
    .end local v8    # "v":Landroid/widget/TextView;
    .end local v9    # "value":F
    :cond_3
    if-eqz v3, :cond_0

    .line 226
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v10, v3}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 227
    .local v0, "cc":[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v10, v3}, Lcom/android/camera/SettingsManager;->getEntryValues(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v10

    array-length v4, v10

    .line 228
    .local v4, "length":I
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v10, v3}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, "index":I
    invoke-direct {p0, v4}, Lcom/android/camera/ui/ProMode;->updateSlider(I)V

    .line 231
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 233
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 234
    new-instance v8, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v8, "v":Landroid/view/View;
    move-object v10, v8

    .line 235
    check-cast v10, Landroid/widget/ImageView;

    sget-object v11, Lcom/android/camera/ui/ProMode;->wbIcons:[I

    aget v11, v11, v1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v10, 0x50

    const/16 v11, 0x50

    invoke-direct {v5, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 238
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v10, v10, v1

    iget v10, v10, Landroid/graphics/Point;->x:I

    add-int/lit8 v10, v10, -0x28

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setX(F)V

    .line 240
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v10, v10, v1

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/lit16 v10, v10, -0xa0

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setY(F)V

    .line 254
    :goto_3
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 242
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "v":Landroid/view/View;
    :cond_4
    new-instance v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v8    # "v":Landroid/view/View;
    move-object v10, v8

    .line 243
    check-cast v10, Landroid/widget/TextView;

    aget-object v11, v0, v1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v10, v8

    .line 244
    check-cast v10, Landroid/widget/TextView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/View;->measure(II)V

    .line 246
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 247
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-direct {v5, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 248
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v10, v10, v1

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setX(F)V

    .line 250
    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v10, v10, v1

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setY(F)V

    goto :goto_3

    .line 257
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    const/4 v10, 0x1

    invoke-direct {p0, v2, v10}, Lcom/android/camera/ui/ProMode;->setIndex(IZ)V

    .line 259
    .end local v0    # "cc":[Ljava/lang/CharSequence;
    .end local v2    # "index":I
    .end local v4    # "length":I
    :cond_6
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mOrientation:I

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ProMode;->setOrientation(I)V

    goto/16 :goto_0
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mOrientation:I

    .line 178
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 179
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mOrientation:I

    .line 180
    .local v0, "rotation":I
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit16 v0, v0, 0xb4

    .line 181
    :cond_1
    rem-int/lit16 v0, v0, 0x168

    .line 182
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 183
    .local v1, "v":Landroid/view/View;
    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 186
    .end local v0    # "rotation":I
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setSlider(F)V
    .locals 4
    .param p1, "slider"    # F

    .prologue
    .line 294
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_focus_distance_key"

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    iget v3, p0, Lcom/android/camera/ui/ProMode;->minFocus:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/SettingsManager;->setFocusDistance(Ljava/lang/String;FF)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const-string v2, "Manual"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->invalidate()V

    .line 298
    return-void
.end method
