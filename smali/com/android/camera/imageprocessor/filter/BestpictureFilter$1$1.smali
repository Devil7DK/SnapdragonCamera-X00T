.class Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;
.super Ljava/lang/Thread;
.source "BestpictureFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;->onMediaSaved(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->this$1:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->this$1:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$100(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 168
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->this$1:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$000(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1$1;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method
