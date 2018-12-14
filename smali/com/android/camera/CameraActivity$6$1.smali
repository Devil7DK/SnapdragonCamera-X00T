.class Lcom/android/camera/CameraActivity$6$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$6;->onTaskQueued(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$6;

.field final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$6;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$6;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/android/camera/CameraActivity$6$1;->this$1:Lcom/android/camera/CameraActivity$6;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$6$1;->val$imageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1200
    iget-object v3, p0, Lcom/android/camera/CameraActivity$6$1;->this$1:Lcom/android/camera/CameraActivity$6;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/CameraActivity$6$1;->val$imageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1201
    iget-object v3, p0, Lcom/android/camera/CameraActivity$6$1;->this$1:Lcom/android/camera/CameraActivity$6;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraActivity$6$1;->val$imageUri:Landroid/net/Uri;

    invoke-interface {v3, v4}, Lcom/android/camera/data/LocalDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 1202
    .local v1, "dataID":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1203
    iget-object v3, p0, Lcom/android/camera/CameraActivity$6$1;->this$1:Lcom/android/camera/CameraActivity$6;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 1204
    .local v0, "d":Lcom/android/camera/data/LocalData;
    new-instance v2, Lcom/android/camera/data/InProgressDataWrapper;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/camera/data/InProgressDataWrapper;-><init>(Lcom/android/camera/data/LocalData;Z)V

    .line 1205
    .local v2, "newData":Lcom/android/camera/data/InProgressDataWrapper;
    iget-object v3, p0, Lcom/android/camera/CameraActivity$6$1;->this$1:Lcom/android/camera/CameraActivity$6;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/camera/data/LocalDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    .line 1207
    .end local v0    # "d":Lcom/android/camera/data/LocalData;
    .end local v2    # "newData":Lcom/android/camera/data/InProgressDataWrapper;
    :cond_0
    return-void
.end method
