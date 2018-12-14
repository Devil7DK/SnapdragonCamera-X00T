.class Lcom/android/camera/SceneModeActivity$3;
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

.field final synthetic val$isSecureCamera:Z


# direct methods
.method constructor <init>(Lcom/android/camera/SceneModeActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SceneModeActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/SceneModeActivity$3;->this$0:Lcom/android/camera/SceneModeActivity;

    iput-boolean p2, p0, Lcom/android/camera/SceneModeActivity$3;->val$isSecureCamera:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/SceneModeActivity$3;->this$0:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v1}, Lcom/android/camera/SceneModeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/camera/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_secure_camera"

    iget-boolean v2, p0, Lcom/android/camera/SceneModeActivity$3;->val$isSecureCamera:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/camera/SceneModeActivity$3;->this$0:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/SceneModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    iget-object v1, p0, Lcom/android/camera/SceneModeActivity$3;->this$0:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v1}, Lcom/android/camera/SceneModeActivity;->finish()V

    .line 151
    return-void
.end method
