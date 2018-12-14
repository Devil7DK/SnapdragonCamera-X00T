.class Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "BestpictureFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/filter/BestpictureFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .line 294
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 295
    return-void
.end method


# virtual methods
.method public getArray()[B
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;->buf:[B

    return-object v0
.end method
