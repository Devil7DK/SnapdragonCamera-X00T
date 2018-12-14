.class Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1219
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1220
    return-void
.end method


# virtual methods
.method public getArray()[B
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;->buf:[B

    return-object v0
.end method
