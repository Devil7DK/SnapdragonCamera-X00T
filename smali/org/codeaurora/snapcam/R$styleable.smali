.class public final Lorg/codeaurora/snapcam/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final CameraPreference_title:I = 0x0

.field public static final IconIndicator:[I

.field public static final IconIndicator_icons:I = 0x0

.field public static final IconIndicator_modes:I = 0x1

.field public static final IconListPreference:[I

.field public static final IconListPreference_icons:I = 0x0

.field public static final IconListPreference_images:I = 0x4

.field public static final IconListPreference_largeIcons:I = 0x2

.field public static final IconListPreference_singleIcon:I = 0x1

.field public static final IconListPreference_thumbnails:I = 0x3

.field public static final ListPreference:[I

.field public static final ListPreference_defaultValue:I = 0x1

.field public static final ListPreference_dependencyList:I = 0x5

.field public static final ListPreference_entries:I = 0x3

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_key:I = 0x0

.field public static final ListPreference_labelList:I = 0x4

.field public static final MenuHelp:[I

.field public static final MenuHelp_forCamera2:I = 0x0

.field public static final Theme_GalleryBase:[I

.field public static final Theme_GalleryBase_listPreferredItemHeightSmall:I = 0x0

.field public static final Theme_GalleryBase_switchStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4248
    new-array v0, v3, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lorg/codeaurora/snapcam/R$styleable;->CameraPreference:[I

    .line 4277
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/codeaurora/snapcam/R$styleable;->IconIndicator:[I

    .line 4318
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/codeaurora/snapcam/R$styleable;->IconListPreference:[I

    .line 4394
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/codeaurora/snapcam/R$styleable;->ListPreference:[I

    .line 4473
    new-array v0, v3, [I

    const v1, 0x7f01000f

    aput v1, v0, v2

    sput-object v0, Lorg/codeaurora/snapcam/R$styleable;->MenuHelp:[I

    .line 4502
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/codeaurora/snapcam/R$styleable;->Theme_GalleryBase:[I

    return-void

    .line 4277
    :array_0
    .array-data 4
        0x7f010009
        0x7f01000a
    .end array-data

    .line 4318
    :array_1
    .array-data 4
        0x7f010009
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data

    .line 4394
    :array_2
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data

    .line 4502
    :array_3
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
