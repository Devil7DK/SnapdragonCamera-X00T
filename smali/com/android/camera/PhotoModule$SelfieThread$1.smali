.class Lcom/android/camera/PhotoModule$SelfieThread$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$SelfieThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$SelfieThread;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$SelfieThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$SelfieThread;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/camera/PhotoModule$SelfieThread$1;->this$1:Lcom/android/camera/PhotoModule$SelfieThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/PhotoModule$SelfieThread$1;->this$1:Lcom/android/camera/PhotoModule$SelfieThread;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$SelfieThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 629
    return-void
.end method
