.class Lcom/android/camera/data/PanoramaMetadataLoader$1;
.super Ljava/lang/Thread;
.source "PanoramaMetadataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/PanoramaMetadataLoader;->getPanoramaMetadata(Landroid/content/Context;Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/PanoramaMetadataLoader;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/data/PanoramaMetadataLoader;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/PanoramaMetadataLoader;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/data/PanoramaMetadataLoader$1;->this$0:Lcom/android/camera/data/PanoramaMetadataLoader;

    iput-object p2, p0, Lcom/android/camera/data/PanoramaMetadataLoader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/data/PanoramaMetadataLoader$1;->this$0:Lcom/android/camera/data/PanoramaMetadataLoader;

    iget-object v1, p0, Lcom/android/camera/data/PanoramaMetadataLoader$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/data/PanoramaMetadataLoader$1;->this$0:Lcom/android/camera/data/PanoramaMetadataLoader;

    .line 76
    invoke-static {v2}, Lcom/android/camera/data/PanoramaMetadataLoader;->access$000(Lcom/android/camera/data/PanoramaMetadataLoader;)Landroid/net/Uri;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Lcom/android/camera/util/PhotoSphereHelper;->getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/data/PanoramaMetadataLoader;->access$100(Lcom/android/camera/data/PanoramaMetadataLoader;Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;)V

    .line 77
    return-void
.end method
