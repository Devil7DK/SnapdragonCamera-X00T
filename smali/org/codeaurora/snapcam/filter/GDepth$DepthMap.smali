.class public Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/GDepth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthMap"
.end annotation


# instance fields
.field public buffer:[B

.field public height:I

.field public roi:Landroid/graphics/Rect;

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p1, p0, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->width:I

    .line 277
    iput p2, p0, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->height:I

    .line 278
    return-void
.end method
