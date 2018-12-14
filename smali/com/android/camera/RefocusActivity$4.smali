.class Lcom/android/camera/RefocusActivity$4;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$4;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$4;->this$0:Lcom/android/camera/RefocusActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/RefocusActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$4;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v0}, Lcom/android/camera/RefocusActivity;->finish()V

    .line 167
    return-void
.end method
