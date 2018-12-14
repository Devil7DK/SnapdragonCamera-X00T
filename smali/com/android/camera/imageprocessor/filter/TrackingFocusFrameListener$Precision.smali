.class public final enum Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;
.super Ljava/lang/Enum;
.source "TrackingFocusFrameListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Precision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

.field public static final enum HIGH:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

.field public static final enum LOW:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->HIGH:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    .line 78
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->LOW:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    sget-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->HIGH:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->LOW:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->$VALUES:[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->$VALUES:[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    invoke-virtual {v0}, [Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    return-object v0
.end method
