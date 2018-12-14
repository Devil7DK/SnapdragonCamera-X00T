.class Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;
.super Ljava/lang/Object;
.source "TinyPlanetFragment.java"

# interfaces
.implements Lcom/android/camera/MediaSaveService$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->onPostExecute(Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

.field final synthetic val$activity:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    iput-object p2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 318
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-virtual {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->dismiss()V

    .line 319
    return-void
.end method
