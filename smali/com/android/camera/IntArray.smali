.class public Lcom/android/camera/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# static fields
.field private static final INIT_CAPACITY:I = 0x8


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/IntArray;->mSize:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v1, p0, Lcom/android/camera/IntArray;->mData:[I

    array-length v1, v1

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    if-ne v1, v2, :cond_1

    .line 27
    iget v1, p0, Lcom/android/camera/IntArray;->mSize:I

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 28
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/android/camera/IntArray;->mData:[I

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_0

    aget v3, v1, p1

    aput v3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iput-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    .line 31
    .end local v0    # "temp":[I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/IntArray;->mData:[I

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/camera/IntArray;->mSize:I

    aput p1, v1, v2

    .line 32
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/IntArray;->mSize:I

    return v0
.end method

.method public toArray([I)[I
    .locals 3
    .param p1, "result"    # [I

    .prologue
    const/4 v2, 0x0

    .line 39
    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lcom/android/camera/IntArray;->mSize:I

    if-ge v0, v1, :cond_0

    .line 40
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 43
    return-object p1
.end method
