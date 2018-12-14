.class Lcom/android/camera/PhotoModule$MetaDataCallback$2;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$MetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$MetaDataCallback;

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$2;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$2;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/DrawAutoHDR;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$2;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/DrawAutoHDR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DrawAutoHDR;->AutoHDR()V

    .line 1521
    :cond_0
    return-void
.end method
