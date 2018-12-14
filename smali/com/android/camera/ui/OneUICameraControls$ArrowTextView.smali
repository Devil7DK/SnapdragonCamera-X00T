.class Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;
.super Landroid/widget/TextView;
.source "OneUICameraControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/OneUICameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowTextView"
.end annotation


# static fields
.field private static final BACKGROUND:I = -0x80000000

.field private static final PADDING_SIZE:I = 0x12

.field private static final TEXT_SIZE:I = 0xe


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/camera/ui/OneUICameraControls;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/OneUICameraControls;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/high16 v2, -0x80000000

    const/16 v1, 0x12

    .line 519
    iput-object p1, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    .line 520
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 522
    const v0, 0x7f0e0230

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setBackgroundColor(I)V

    .line 524
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setVisibility(I)V

    .line 525
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setTextSize(F)V

    .line 529
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setPadding(IIII)V

    .line 531
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    .line 532
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 534
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 539
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 542
    :cond_0
    return-void
.end method

.method public setArrow(FFFFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 545
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    .line 546
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 547
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 549
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 551
    return-void
.end method
