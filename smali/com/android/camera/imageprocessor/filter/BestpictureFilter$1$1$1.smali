.class Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1$1;
.super Ljava/lang/Object;
.source "BestpictureFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1$1;->this$2:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1$1;->this$2:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->this$1:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$200(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1$1;->this$2:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->this$1:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1$1;->this$2:Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;

    iget-object v1, v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->access$300(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;Landroid/net/Uri;)V

    .line 176
    return-void
.end method
