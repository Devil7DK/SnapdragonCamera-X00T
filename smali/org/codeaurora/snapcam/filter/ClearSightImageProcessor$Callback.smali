.class public interface abstract Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onClearSightFailure([B)V
.end method

.method public abstract onClearSightSuccess([B)V
.end method

.method public abstract onReleaseShutterLock()V
.end method
