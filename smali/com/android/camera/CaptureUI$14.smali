.class Lcom/android/camera/CaptureUI$14;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;

.field final synthetic val$intentMode:I


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/camera/CaptureUI$14;->this$0:Lcom/android/camera/CaptureUI;

    iput p2, p0, Lcom/android/camera/CaptureUI$14;->val$intentMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 449
    iget v0, p0, Lcom/android/camera/CaptureUI$14;->val$intentMode:I

    if-ne v0, v2, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/camera/CaptureUI$14;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onCaptureDone()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget v0, p0, Lcom/android/camera/CaptureUI$14;->val$intentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/camera/CaptureUI$14;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/CaptureModule;->onRecordingDone(Z)V

    goto :goto_0
.end method
