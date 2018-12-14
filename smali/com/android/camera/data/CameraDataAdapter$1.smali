.class Lcom/android/camera/data/CameraDataAdapter$1;
.super Ljava/lang/Object;
.source "CameraDataAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/CameraDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/CameraDataAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraDataAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/CameraDataAdapter;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/camera/data/CameraDataAdapter$1;->this$0:Lcom/android/camera/data/CameraDataAdapter;

    iput p2, p0, Lcom/android/camera/data/CameraDataAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataRemoved(I)Z
    .locals 1
    .param p1, "dataID"    # I

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isDataUpdated(I)Z
    .locals 1
    .param p1, "dataID"    # I

    .prologue
    .line 242
    iget v0, p0, Lcom/android/camera/data/CameraDataAdapter$1;->val$pos:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
