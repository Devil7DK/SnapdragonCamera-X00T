.class Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;
.super Ljava/lang/Object;
.source "BestpictureFilter.java"

# interfaces
.implements Lcom/android/camera/MediaSaveService$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$000(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 164
    new-instance v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;Landroid/net/Uri;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->start()V

    .line 182
    :cond_0
    return-void
.end method
