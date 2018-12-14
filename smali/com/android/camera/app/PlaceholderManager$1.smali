.class Lcom/android/camera/app/PlaceholderManager$1;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/PlaceholderManager;->getListeners()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/android/camera/ImageTaskManager$TaskListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/PlaceholderManager;


# direct methods
.method constructor <init>(Lcom/android/camera/app/PlaceholderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/PlaceholderManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/app/PlaceholderManager$1;->this$0:Lcom/android/camera/app/PlaceholderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/camera/ImageTaskManager$TaskListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;

    iget-object v1, p0, Lcom/android/camera/app/PlaceholderManager$1;->this$0:Lcom/android/camera/app/PlaceholderManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;-><init>(Lcom/android/camera/app/PlaceholderManager;Lcom/android/camera/app/PlaceholderManager$1;)V

    return-object v0
.end method
