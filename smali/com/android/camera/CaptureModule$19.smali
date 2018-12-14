.class Lcom/android/camera/CaptureModule$19;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->updateFaceView([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$extendedFaces:[Lcom/android/camera/ExtendedFace;

.field final synthetic val$faces:[Landroid/hardware/camera2/params/Face;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$19;->val$faces:[Landroid/hardware/camera2/params/Face;

    iput-object p3, p0, Lcom/android/camera/CaptureModule$19;->val$extendedFaces:[Lcom/android/camera/ExtendedFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2995
    iget-object v0, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$19;->val$faces:[Landroid/hardware/camera2/params/Face;

    iget-object v2, p0, Lcom/android/camera/CaptureModule$19;->val$extendedFaces:[Lcom/android/camera/ExtendedFace;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CaptureUI;->onFaceDetection([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    .line 2996
    return-void
.end method
