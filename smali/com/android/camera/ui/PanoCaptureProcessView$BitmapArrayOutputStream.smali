.class Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PanoCaptureProcessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapArrayOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p2, "size"    # I

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 538
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 539
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->buf:[B

    .line 550
    return-void
.end method

.method public declared-synchronized toByteArray()[B
    .locals 1

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
