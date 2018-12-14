.class Lcom/android/camera/data/FixedFirstDataAdapter$1;
.super Ljava/lang/Object;
.source "FixedFirstDataAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/FixedFirstDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/FixedFirstDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/data/FixedFirstDataAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/FixedFirstDataAdapter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/data/FixedFirstDataAdapter$1;->this$0:Lcom/android/camera/data/FixedFirstDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataRemoved(I)Z
    .locals 1
    .param p1, "dataID"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isDataUpdated(I)Z
    .locals 1
    .param p1, "dataID"    # I

    .prologue
    .line 95
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
