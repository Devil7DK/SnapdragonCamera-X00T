.class public Lcom/android/camera/CountDownTimerPreference;
.super Lcom/android/camera/IconListPreference;
.source "CountDownTimerPreference.java"


# static fields
.field private static final DURATIONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x5
        0xa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/CountDownTimerPreference;->initCountDownDurationChoices(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private initCountDownDurationChoices(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 34
    sget-object v3, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    array-length v3, v3

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 35
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    sget-object v3, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 36
    .local v0, "entries":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 37
    sget-object v3, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    const v3, 0x7f0e0350

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 36
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0004

    sget-object v5, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    aget v5, v5, v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    aget v7, v7, v2

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 42
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/CountDownTimerPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/camera/CountDownTimerPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
