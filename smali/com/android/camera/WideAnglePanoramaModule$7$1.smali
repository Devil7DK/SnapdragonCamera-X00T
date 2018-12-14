.class Lcom/android/camera/WideAnglePanoramaModule$7$1;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/WideAnglePanoramaModule$7;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule$7;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/WideAnglePanoramaModule$7;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$7$1;->this$1:Lcom/android/camera/WideAnglePanoramaModule$7;

    iput p2, p0, Lcom/android/camera/WideAnglePanoramaModule$7$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$7$1;->this$1:Lcom/android/camera/WideAnglePanoramaModule$7;

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaModule$7$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/android/camera/WideAnglePanoramaUI;->updateSavingProgress(I)V

    .line 709
    return-void
.end method
