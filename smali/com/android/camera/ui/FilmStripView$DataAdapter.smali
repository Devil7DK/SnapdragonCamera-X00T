.class public interface abstract Lcom/android/camera/ui/FilmStripView$DataAdapter;
.super Ljava/lang/Object;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;,
        Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;
    }
.end annotation


# virtual methods
.method public abstract canSwipeInFullScreen(I)Z
.end method

.method public abstract getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;
.end method

.method public abstract getTotalNumber()I
.end method

.method public abstract getView(Landroid/app/Activity;I)Landroid/view/View;
.end method

.method public abstract setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V
.end method

.method public abstract suggestViewSizeBound(II)V
.end method
