.class Lcom/android/camera/data/CameraDataAdapter$DeletionTask;
.super Landroid/os/AsyncTask;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/data/LocalData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/camera/data/CameraDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraDataAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/camera/data/CameraDataAdapter$DeletionTask;->this$0:Lcom/android/camera/data/CameraDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/android/camera/data/CameraDataAdapter$DeletionTask;->mContext:Landroid/content/Context;

    .line 369
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    check-cast p1, [Lcom/android/camera/data/LocalData;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraDataAdapter$DeletionTask;->doInBackground([Lcom/android/camera/data/LocalData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/camera/data/LocalData;)Ljava/lang/Void;
    .locals 4
    .param p1, "data"    # [Lcom/android/camera/data/LocalData;

    .prologue
    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 374
    aget-object v1, p1, v0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/data/LocalData;->isDataActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const-string v1, "CAM_CameraDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deletion is not supported:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/camera/data/CameraDataAdapter$DeletionTask;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/camera/data/LocalData;->delete(Landroid/content/Context;)Z

    goto :goto_1

    .line 380
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
