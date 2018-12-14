.class public interface abstract Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;
.super Ljava/lang/Object;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView$DataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDataInserted(ILcom/android/camera/ui/FilmStripView$ImageData;)V
.end method

.method public abstract onDataLoaded()V
.end method

.method public abstract onDataRemoved(ILcom/android/camera/ui/FilmStripView$ImageData;)V
.end method

.method public abstract onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V
.end method
