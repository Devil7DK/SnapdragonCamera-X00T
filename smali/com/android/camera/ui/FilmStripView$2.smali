.class Lcom/android/camera/ui/FilmStripView$2;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView;->updateBottomControls(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$2;->this$0:Lcom/android/camera/ui/FilmStripView;

    iput p2, p0, Lcom/android/camera/ui/FilmStripView$2;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(ZZ)V
    .locals 3
    .param p1, "isPanorama"    # Z
    .param p2, "isPanorama360"    # Z

    .prologue
    .line 1149
    iget v0, p0, Lcom/android/camera/ui/FilmStripView$2;->val$requestId:I

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$2;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$2;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$2;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/FilmStripView$2;->val$requestId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFocusChanged(IZ)V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$2;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmstripBottomControls;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilmstripBottomControls;->setViewPhotoSphereButtonVisibility(Z)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$2;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmstripBottomControls;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FilmstripBottomControls;->setTinyPlanetButtonVisibility(Z)V

    .line 1158
    :cond_1
    return-void
.end method
