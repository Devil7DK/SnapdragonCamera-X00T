.class public Lcom/android/camera/data/LocalDataList;
.super Ljava/lang/Object;
.source "LocalDataList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalDataList$UriWrapper;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/data/LocalData;",
            ">;"
        }
    .end annotation
.end field

.field private mUriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/camera/data/LocalData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(ILcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public add(Lcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public get(I)Lcom/android/camera/data/LocalData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/LocalData;

    return-object v0
.end method

.method public get(Landroid/net/Uri;)Lcom/android/camera/data/LocalData;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/LocalData;

    return-object v0
.end method

.method public indexOf(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, -0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/camera/data/LocalDataList$UriWrapper;

    invoke-direct {v1, p1}, Lcom/android/camera/data/LocalDataList$UriWrapper;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public remove(I)Lcom/android/camera/data/LocalData;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/LocalData;

    .line 59
    .local v0, "removedItem":Lcom/android/camera/data/LocalData;
    iget-object v1, p0, Lcom/android/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public set(ILcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/camera/data/LocalData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/camera/data/LocalData;>;"
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    return-void
.end method
