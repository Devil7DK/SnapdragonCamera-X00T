.class public Lcom/android/camera/data/LocalData$NewestFirstComparator;
.super Ljava/lang/Object;
.source "LocalData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewestFirstComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/data/LocalData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareDate(JJ)I
    .locals 6
    .param p0, "v1"    # J
    .param p2, "v2"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 178
    cmp-long v3, p0, v4

    if-ltz v3, :cond_3

    cmp-long v3, p2, v4

    if-ltz v3, :cond_3

    .line 179
    cmp-long v3, p0, p2

    if-gez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    cmp-long v0, p0, p2

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 181
    :cond_3
    cmp-long v3, p2, p0

    if-ltz v3, :cond_0

    cmp-long v0, p2, p0

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/camera/data/LocalData;Lcom/android/camera/data/LocalData;)I
    .locals 6
    .param p1, "d1"    # Lcom/android/camera/data/LocalData;
    .param p2, "d2"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 186
    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getDateTaken()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/android/camera/data/LocalData;->getDateTaken()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/data/LocalData$NewestFirstComparator;->compareDate(JJ)I

    move-result v0

    .line 187
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 188
    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getDateModified()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/android/camera/data/LocalData;->getDateModified()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/data/LocalData$NewestFirstComparator;->compareDate(JJ)I

    move-result v0

    .line 190
    :cond_0
    if-nez v0, :cond_1

    .line 191
    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 193
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 170
    check-cast p1, Lcom/android/camera/data/LocalData;

    check-cast p2, Lcom/android/camera/data/LocalData;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/LocalData$NewestFirstComparator;->compare(Lcom/android/camera/data/LocalData;Lcom/android/camera/data/LocalData;)I

    move-result v0

    return v0
.end method
