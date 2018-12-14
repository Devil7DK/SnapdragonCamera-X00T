.class public interface abstract Lcom/android/camera/ui/ListMenu$Listener;
.super Ljava/lang/Object;
.source "ListMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onListMenuTouched()V
.end method

.method public abstract onPreferenceClicked(Lcom/android/camera/ListPreference;)V
.end method

.method public abstract onPreferenceClicked(Lcom/android/camera/ListPreference;I)V
.end method

.method public abstract onSettingChanged(Lcom/android/camera/ListPreference;)V
.end method
