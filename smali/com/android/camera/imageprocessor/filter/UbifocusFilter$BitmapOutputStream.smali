.class Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "UbifocusFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/filter/UbifocusFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;->this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    .line 256
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 257
    return-void
.end method


# virtual methods
.method public getArray()[B
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;->buf:[B

    return-object v0
.end method
