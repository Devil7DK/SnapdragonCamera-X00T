.class Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;
.super Ljava/lang/Thread;
.source "UbifocusFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

.field final synthetic val$bVU:Ljava/nio/ByteBuffer;

.field final synthetic val$bY:Ljava/nio/ByteBuffer;

.field final synthetic val$imageNum:I


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->val$bY:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->val$bVU:Ljava/nio/ByteBuffer;

    iput p4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->val$imageNum:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->access$000(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->access$100(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    monitor-exit v2

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->val$bY:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->val$bVU:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->val$imageNum:I

    invoke-static {v1, v3, v4, v5}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->access$200(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    .line 152
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->val$imageNum:I

    invoke-static {v1, v3, v0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->access$300(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;I[B)V

    .line 153
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->this$0:Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->access$408(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;)I

    .line 154
    monitor-exit v2

    goto :goto_0

    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
