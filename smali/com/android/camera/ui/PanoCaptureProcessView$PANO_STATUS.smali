.class final enum Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
.super Ljava/lang/Enum;
.source "PanoCaptureProcessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PANO_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field public static final enum OPENING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 128
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "ACTIVE_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 129
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "ACTIVE_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 130
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "ACTIVE_RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 131
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "ACTIVE_UP"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 132
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "ACTIVE_DOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 137
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "COMPLETING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 138
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const-string v1, "OPENING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->OPENING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->OPENING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->$VALUES:[Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->$VALUES:[Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-virtual {v0}, [Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    return-object v0
.end method
