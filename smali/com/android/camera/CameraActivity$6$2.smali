.class Lcom/android/camera/CameraActivity$6$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$6;->onTaskDone(Ljava/lang/String;Landroid/net/Uri;)V
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
    .line 1213
    iput-object p1, p0, Lcom/android/camera/CameraActivity$6$2;->this$1:Lcom/android/camera/CameraActivity$6;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$6$2;->val$imageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/camera/CameraActivity$6$2;->this$1:Lcom/android/camera/CameraActivity$6;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$6$2;->this$1:Lcom/android/camera/CameraActivity$6;

    iget-object v1, v1, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$6$2;->val$imageUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/LocalDataAdapter;->refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1217
    return-void
.end method
