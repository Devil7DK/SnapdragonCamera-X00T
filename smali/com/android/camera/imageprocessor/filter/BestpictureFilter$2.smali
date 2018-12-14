.class Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;
.super Ljava/lang/Object;
.source "BestpictureFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$000(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const-string v2, ""

    const-string v3, "Saving pictures..."

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$402(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 199
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$400(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 200
    return-void
.end method
