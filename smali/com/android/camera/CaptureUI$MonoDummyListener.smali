.class Lcom/android/camera/CaptureUI$MonoDummyListener;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/renderscript/Allocation$OnBufferAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonoDummyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;

.field yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureUI;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)V
    .locals 0
    .param p2, "yuvToRgbIntrinsic"    # Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    iput-object p2, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 1304
    return-void
.end method


# virtual methods
.method public onBufferAvailable(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$2300(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$2300(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioReceive()V

    .line 1310
    iget-object v1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/CaptureUI;->access$2402(Lcom/android/camera/CaptureUI;Z)Z

    .line 1311
    iget-object v1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$2500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1313
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v2, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 1314
    iget-object v1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioSend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SnapCam_CaptureUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
