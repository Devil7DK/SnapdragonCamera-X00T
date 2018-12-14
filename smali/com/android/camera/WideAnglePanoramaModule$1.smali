.class Lcom/android/camera/WideAnglePanoramaModule$1;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$1;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x1

    .line 241
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$1;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$600(Lcom/android/camera/WideAnglePanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$1;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$700(Lcom/android/camera/WideAnglePanoramaModule;Z)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$1;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$800(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$1;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/WideAnglePanoramaUI;->showDirectionIndicators(I)V

    .line 248
    :cond_2
    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$1;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0, v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$602(Lcom/android/camera/WideAnglePanoramaModule;Z)Z

    goto :goto_0
.end method
