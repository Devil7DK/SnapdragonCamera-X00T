.class Lcom/android/camera/PhotoModule$ShutterCallback$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$ShutterCallback;->onShutter(Lcom/android/camera/CameraManager$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$ShutterCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$ShutterCallback;

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ShutterCallback$1;->this$1:Lcom/android/camera/PhotoModule$ShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback$1;->this$1:Lcom/android/camera/PhotoModule$ShutterCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)V

    .line 1461
    return-void
.end method
