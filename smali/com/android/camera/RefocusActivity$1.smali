.class Lcom/android/camera/RefocusActivity$1;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RefocusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$1;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$1;->this$0:Lcom/android/camera/RefocusActivity;

    new-instance v1, Lcom/android/camera/RefocusActivity$DepthMap;

    iget-object v2, p0, Lcom/android/camera/RefocusActivity$1;->this$0:Lcom/android/camera/RefocusActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/RefocusActivity$1;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v4}, Lcom/android/camera/RefocusActivity;->access$100(Lcom/android/camera/RefocusActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DepthMapImage.y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/RefocusActivity$DepthMap;-><init>(Lcom/android/camera/RefocusActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/camera/RefocusActivity;->access$002(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$DepthMap;)Lcom/android/camera/RefocusActivity$DepthMap;

    .line 123
    return-void
.end method
