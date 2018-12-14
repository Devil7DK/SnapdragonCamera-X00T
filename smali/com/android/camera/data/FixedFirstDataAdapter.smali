.class public Lcom/android/camera/data/FixedFirstDataAdapter;
.super Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;
.source "FixedFirstDataAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_FixedFirstDataAdapter"


# instance fields
.field private mFirstData:Lcom/android/camera/data/LocalData;

.field private mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "wrappedAdapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p2, "firstData"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;-><init>(Lcom/android/camera/data/LocalDataAdapter;)V

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mFirstData:Lcom/android/camera/data/LocalData;

    .line 56
    return-void
.end method


# virtual methods
.method public canSwipeInFullScreen(I)Z
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mFirstData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->canSwipeInFullScreen()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalDataAdapter;->canSwipeInFullScreen(I)Z

    move-result v0

    goto :goto_0
.end method

.method public findDataByContentUri(Landroid/net/Uri;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 75
    iget-object v2, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/data/LocalDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 76
    .local v0, "pos":I
    if-eq v0, v1, :cond_0

    .line 77
    add-int/lit8 v1, v0, 0x1

    .line 79
    :cond_0
    return v1
.end method

.method public getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mFirstData:Lcom/android/camera/data/LocalData;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalDataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalData(I)Lcom/android/camera/data/LocalData;
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mFirstData:Lcom/android/camera/data/LocalData;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotalNumber()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataID"    # I

    .prologue
    const/4 v4, 0x0

    .line 111
    if-nez p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mFirstData:Lcom/android/camera/data/LocalData;

    iget v2, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mSuggestedWidth:I

    iget v3, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mSuggestedHeight:I

    move-object v1, p1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/data/LocalData;->getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/data/LocalDataAdapter;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDataInserted(ILcom/android/camera/ui/FilmStripView$ImageData;)V
    .locals 2
    .param p1, "dataID"    # I
    .param p2, "data"    # Lcom/android/camera/ui/FilmStripView$ImageData;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataInserted(ILcom/android/camera/ui/FilmStripView$ImageData;)V

    .line 182
    return-void
.end method

.method public onDataLoaded()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    new-instance v1, Lcom/android/camera/data/FixedFirstDataAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/camera/data/FixedFirstDataAdapter$2;-><init>(Lcom/android/camera/data/FixedFirstDataAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataLoaded()V

    goto :goto_0
.end method

.method public onDataRemoved(ILcom/android/camera/ui/FilmStripView$ImageData;)V
    .locals 2
    .param p1, "dataID"    # I
    .param p2, "data"    # Lcom/android/camera/ui/FilmStripView$ImageData;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataRemoved(ILcom/android/camera/ui/FilmStripView$ImageData;)V

    .line 187
    return-void
.end method

.method public onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V
    .locals 2
    .param p1, "reporter"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    new-instance v1, Lcom/android/camera/data/FixedFirstDataAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/data/FixedFirstDataAdapter$3;-><init>(Lcom/android/camera/data/FixedFirstDataAdapter;Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    invoke-interface {v0, v1}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    .line 177
    return-void
.end method

.method public removeData(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataID"    # I

    .prologue
    .line 68
    if-lez p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 71
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    .line 129
    iget-object v1, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/data/LocalDataAdapter;->setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataLoaded()V

    .line 135
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 129
    goto :goto_0
.end method

.method public updateData(ILcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 84
    if-nez p1, :cond_1

    .line 85
    iput-object p2, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mFirstData:Lcom/android/camera/data/LocalData;

    .line 86
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    new-instance v1, Lcom/android/camera/data/FixedFirstDataAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/camera/data/FixedFirstDataAdapter$1;-><init>(Lcom/android/camera/data/FixedFirstDataAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Lcom/android/camera/data/LocalDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    goto :goto_0
.end method
