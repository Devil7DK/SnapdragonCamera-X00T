.class public final enum Lcom/android/camera/PhotoUI$SURFACE_STATUS;
.super Ljava/lang/Enum;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SURFACE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/PhotoUI$SURFACE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/PhotoUI$SURFACE_STATUS;

.field public static final enum HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

.field public static final enum SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoUI$SURFACE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    .line 191
    new-instance v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    const-string v1, "SURFACE_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/PhotoUI$SURFACE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    sget-object v1, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->$VALUES:[Lcom/android/camera/PhotoUI$SURFACE_STATUS;

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
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/PhotoUI$SURFACE_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    const-class v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/PhotoUI$SURFACE_STATUS;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->$VALUES:[Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v0}, [Lcom/android/camera/PhotoUI$SURFACE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    return-object v0
.end method
