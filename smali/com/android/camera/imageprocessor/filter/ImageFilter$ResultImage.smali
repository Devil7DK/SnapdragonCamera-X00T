.class public Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
.super Ljava/lang/Object;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/filter/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultImage"
.end annotation


# instance fields
.field public height:I

.field public outBuffer:Ljava/nio/ByteBuffer;

.field public outRoi:Landroid/graphics/Rect;

.field public stride:I

.field public width:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "roi"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    .line 77
    iput-object p2, p0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 78
    iput p3, p0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    .line 79
    iput p4, p0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    .line 80
    iput p5, p0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    .line 81
    return-void
.end method
