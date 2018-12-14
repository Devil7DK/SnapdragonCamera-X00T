.class Lcom/android/camera/app/PlaceholderManager$ListenerIterator;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/PlaceholderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/camera/ImageTaskManager$TaskListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

.field final synthetic this$0:Lcom/android/camera/app/PlaceholderManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/app/PlaceholderManager;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->this$0:Lcom/android/camera/app/PlaceholderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mIndex:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/PlaceholderManager;Lcom/android/camera/app/PlaceholderManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/app/PlaceholderManager;
    .param p2, "x1"    # Lcom/android/camera/app/PlaceholderManager$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;-><init>(Lcom/android/camera/app/PlaceholderManager;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mIndex:I

    iget-object v1, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->this$0:Lcom/android/camera/app/PlaceholderManager;

    invoke-static {v1}, Lcom/android/camera/app/PlaceholderManager;->access$100(Lcom/android/camera/app/PlaceholderManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->this$0:Lcom/android/camera/app/PlaceholderManager;

    invoke-static {v0}, Lcom/android/camera/app/PlaceholderManager;->access$100(Lcom/android/camera/app/PlaceholderManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageTaskManager$TaskListener;

    iput-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 111
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->this$0:Lcom/android/camera/app/PlaceholderManager;

    invoke-static {v0}, Lcom/android/camera/app/PlaceholderManager;->access$100(Lcom/android/camera/app/PlaceholderManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Lcom/android/camera/ImageTaskManager$TaskListener;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->hasNext()Z

    .line 121
    iget v1, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mIndex:I

    .line 122
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 123
    .local v0, "next":Lcom/android/camera/ImageTaskManager$TaskListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->mNext:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 124
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/camera/app/PlaceholderManager$ListenerIterator;->next()Lcom/android/camera/ImageTaskManager$TaskListener;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
