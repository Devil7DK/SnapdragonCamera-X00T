.class public final enum Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;
.super Ljava/lang/Enum;
.source "TrackingFocusFrameListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

.field public static final enum CPU_OFFLOAD:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

.field public static final enum DEFAULT:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

.field public static final enum LOW_POWER:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

.field public static final enum PERFORMANCE:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->DEFAULT:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    .line 71
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    const-string v1, "PERFORMANCE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->PERFORMANCE:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    .line 72
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    const-string v1, "CPU_OFFLOAD"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->CPU_OFFLOAD:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    .line 73
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    const-string v1, "LOW_POWER"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->LOW_POWER:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    sget-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->DEFAULT:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->PERFORMANCE:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->CPU_OFFLOAD:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->LOW_POWER:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->$VALUES:[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->$VALUES:[Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    invoke-virtual {v0}, [Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    return-object v0
.end method
