.class public Lorg/codeaurora/snapcam/filter/DDMNativeEngine$DepthMap;
.super Ljava/lang/Object;
.source "DDMNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/DDMNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthMap"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private height:I

.field private roi:Landroid/graphics/Rect;

.field private stride:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
