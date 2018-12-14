.class public interface abstract Lcom/android/camera/ui/FilmStripView$Listener;
.super Ljava/lang/Object;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCurrentDataCentered(I)V
.end method

.method public abstract onCurrentDataOffCentered(I)V
.end method

.method public abstract onDataDemoted(I)V
.end method

.method public abstract onDataFocusChanged(IZ)V
.end method

.method public abstract onDataFullScreenChange(IZ)V
.end method

.method public abstract onDataPromoted(I)V
.end method

.method public abstract onReload()V
.end method

.method public abstract onToggleSystemDecorsVisibility(I)V
.end method

.method public abstract setSystemDecorsVisibility(Z)V
.end method
