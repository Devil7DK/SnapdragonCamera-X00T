.class Lcom/android/camera/data/LocalDataList$UriWrapper;
.super Ljava/lang/Object;
.source "LocalDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriWrapper"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/data/LocalDataList$UriWrapper;->mUri:Landroid/net/Uri;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v0, p1, Lcom/android/camera/data/LocalData;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/LocalDataList$UriWrapper;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/android/camera/data/LocalData;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
