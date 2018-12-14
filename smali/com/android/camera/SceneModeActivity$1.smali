.class Lcom/android/camera/SceneModeActivity$1;
.super Ljava/lang/Object;
.source "SceneModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SceneModeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SceneModeActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/SceneModeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SceneModeActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/SceneModeActivity$1;->this$0:Lcom/android/camera/SceneModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/SceneModeActivity$1;->this$0:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v0}, Lcom/android/camera/SceneModeActivity;->finish()V

    .line 124
    return-void
.end method
