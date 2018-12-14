.class Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;
.super Ljava/lang/Object;
.source "BestpictureFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->dismissProgressDialog()V
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
    .line 225
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$400(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$400(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$400(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$402(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 231
    :cond_0
    return-void
.end method
