.class public abstract Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;
.super Ljava/lang/Object;
.source "AbstractLocalDataAdapterWrapper.java"

# interfaces
.implements Lcom/android/camera/data/LocalDataAdapter;


# instance fields
.field protected final mAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field protected mSuggestedHeight:I

.field protected mSuggestedWidth:I


# direct methods
.method constructor <init>(Lcom/android/camera/data/LocalDataAdapter;)V
    .locals 2
    .param p1, "wrappedAdapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data adapter is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 48
    return-void
.end method


# virtual methods
.method public addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 75
    return-void
.end method

.method public addNewVideo(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalDataAdapter;->addNewVideo(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 70
    return-void
.end method

.method public executeDeletion(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->executeDeletion(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->flush()V

    .line 85
    return-void
.end method

.method public insertData(Lcom/android/camera/data/LocalData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->insertData(Lcom/android/camera/data/LocalData;)V

    .line 80
    return-void
.end method

.method public refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalDataAdapter;->refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 100
    return-void
.end method

.method public requestLoad(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->requestLoad(Landroid/content/ContentResolver;)V

    .line 65
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V

    .line 60
    return-void
.end method

.method public suggestViewSizeBound(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mSuggestedWidth:I

    .line 53
    iput p2, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mSuggestedHeight:I

    .line 54
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalDataAdapter;->suggestViewSizeBound(II)V

    .line 55
    return-void
.end method

.method public undoDataRemoval()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->undoDataRemoval()Z

    move-result v0

    return v0
.end method
