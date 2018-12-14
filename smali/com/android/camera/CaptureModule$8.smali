.class Lcom/android/camera/CaptureModule$8;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->showCapturedReview([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;[BI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/android/camera/CaptureModule$8;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$8;->val$jpegData:[B

    iput p3, p0, Lcom/android/camera/CaptureModule$8;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/camera/CaptureModule$8;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$8;->val$jpegData:[B

    iget v2, p0, Lcom/android/camera/CaptureModule$8;->val$orientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CaptureUI;->showCapturedImageForReview([BI)V

    .line 1385
    return-void
.end method
