.class public Lcom/android/camera/util/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field public static final AT_LEAST_16:Z

.field public static final HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

.field public static final HAS_APP_GALLERY:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_HDR_PLUS:Z

.field public static final HAS_DISPLAY_LISTENER:Z

.field public static final HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

.field public static final HAS_HIDEYBARS:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_ORIENTATION_LOCK:Z

.field public static final HAS_RESUME_SUPPORTED:Z

.field public static final HAS_ROTATION_ANIMATION:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x12

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->AT_LEAST_16:Z

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_APP_GALLERY:Z

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    .line 42
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_HDR_PLUS:Z

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_HDR:Z

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    .line 54
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_HIDEYBARS:Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-le v0, v3, :cond_d

    :goto_d
    sput-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_RESUME_SUPPORTED:Z

    return-void

    :cond_0
    move v0, v2

    .line 24
    goto :goto_0

    :cond_1
    move v0, v2

    .line 26
    goto :goto_1

    :cond_2
    move v0, v2

    .line 29
    goto :goto_2

    :cond_3
    move v0, v2

    .line 31
    goto :goto_3

    :cond_4
    move v0, v2

    .line 33
    goto :goto_4

    :cond_5
    move v0, v2

    .line 35
    goto :goto_5

    :cond_6
    move v0, v2

    .line 37
    goto :goto_6

    :cond_7
    move v0, v2

    .line 39
    goto :goto_7

    :cond_8
    move v0, v2

    .line 43
    goto :goto_8

    :cond_9
    move v0, v2

    .line 45
    goto :goto_9

    :cond_a
    move v0, v2

    .line 48
    goto :goto_a

    :cond_b
    move v0, v2

    .line 50
    goto :goto_b

    :cond_c
    move v0, v2

    .line 52
    goto :goto_c

    :cond_d
    move v1, v2

    .line 56
    goto :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultVal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 63
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 65
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local p3    # "defaultVal":I
    :goto_0
    return p3

    .line 64
    .restart local p3    # "defaultVal":I
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isKitKatOrHigher()Z
    .locals 2

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const-string v0, "KeyLimePie"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
