.class Lcom/android/camera/CameraActivity$8;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/MediaDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$localData:Lcom/android/camera/data/LocalData;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/LocalData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$8;->val$localData:Lcom/android/camera/data/LocalData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/data/MediaDetails;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->val$localData:Lcom/android/camera/data/LocalData;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalData;->getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1434
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$8;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/data/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/data/MediaDetails;)V
    .locals 1
    .param p1, "mediaDetails"    # Lcom/android/camera/data/MediaDetails;

    .prologue
    .line 1442
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ui/DetailsDialog;->create(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1445
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1434
    check-cast p1, Lcom/android/camera/data/MediaDetails;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$8;->onPostExecute(Lcom/android/camera/data/MediaDetails;)V

    return-void
.end method
