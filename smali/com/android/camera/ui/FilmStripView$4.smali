.class Lcom/android/camera/ui/FilmStripView$4;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataInserted(ILcom/android/camera/ui/FilmStripView$ImageData;)V
    .locals 2
    .param p1, "dataID"    # I
    .param p2, "data"    # Lcom/android/camera/ui/FilmStripView$ImageData;

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1000(Lcom/android/camera/ui/FilmStripView;)V

    .line 1759
    :goto_0
    return-void

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/FilmStripView;->access$1300(Lcom/android/camera/ui/FilmStripView;I)V

    .line 1758
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Z)V

    goto :goto_0
.end method

.method public onDataLoaded()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Z)V

    .line 1740
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$900(Lcom/android/camera/ui/FilmStripView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1000(Lcom/android/camera/ui/FilmStripView;)V

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView;->access$902(Lcom/android/camera/ui/FilmStripView;Z)Z

    .line 1743
    return-void
.end method

.method public onDataRemoved(ILcom/android/camera/ui/FilmStripView$ImageData;)V
    .locals 1
    .param p1, "dataID"    # I
    .param p2, "data"    # Lcom/android/camera/ui/FilmStripView$ImageData;

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/ui/FilmStripView;->access$1400(Lcom/android/camera/ui/FilmStripView;ILcom/android/camera/ui/FilmStripView$ImageData;)V

    .line 1764
    return-void
.end method

.method public onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V
    .locals 1
    .param p1, "reporter"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$4;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/FilmStripView;->access$1100(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    .line 1748
    return-void
.end method
