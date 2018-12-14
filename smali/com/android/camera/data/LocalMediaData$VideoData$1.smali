.class Lcom/android/camera/data/LocalMediaData$VideoData$1;
.super Ljava/lang/Object;
.source "LocalMediaData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/LocalMediaData$VideoData;->getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/camera/data/LocalMediaData$VideoData;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/LocalMediaData$VideoData;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/camera/data/LocalMediaData$VideoData$1;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    iput-object p2, p0, Lcom/android/camera/data/LocalMediaData$VideoData$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$VideoData$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData$1;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    invoke-virtual {v1}, Lcom/android/camera/data/LocalMediaData$VideoData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/data/LocalMediaData$VideoData$1;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    iget-object v2, v2, Lcom/android/camera/data/LocalMediaData$VideoData;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 778
    return-void
.end method
