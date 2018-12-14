.class Lcom/android/camera/CameraErrorCallback$1;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraErrorCallback;->onError(ILandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraErrorCallback;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraErrorCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraErrorCallback;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback$1;->this$0:Lcom/android/camera/CameraErrorCallback;

    iput p2, p0, Lcom/android/camera/CameraErrorCallback$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback$1;->this$0:Lcom/android/camera/CameraErrorCallback;

    iget-object v0, v0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/CameraErrorCallback$1;->val$resId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 59
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback$1;->this$0:Lcom/android/camera/CameraErrorCallback;

    iget-object v0, v0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 60
    return-void
.end method
