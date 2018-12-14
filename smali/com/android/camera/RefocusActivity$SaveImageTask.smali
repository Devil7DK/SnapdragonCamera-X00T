.class Lcom/android/camera/RefocusActivity$SaveImageTask;
.super Landroid/os/AsyncTask;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/RefocusActivity;
    .param p2, "x1"    # Lcom/android/camera/RefocusActivity$1;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/camera/RefocusActivity$SaveImageTask;-><init>(Lcom/android/camera/RefocusActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$SaveImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .param p1, "path"    # [Ljava/lang/String;

    .prologue
    .line 214
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v5}, Lcom/android/camera/RefocusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v6}, Lcom/android/camera/RefocusActivity;->access$1100(Lcom/android/camera/RefocusActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 215
    .local v4, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "in":Ljava/io/FileInputStream;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 218
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0    # "buf":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 225
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v6}, Lcom/android/camera/RefocusActivity;->access$1100(Lcom/android/camera/RefocusActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v5, v2}, Lcom/android/camera/RefocusActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    const/4 v5, 0x0

    return-object v5

    .line 221
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v0    # "buf":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 222
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$SaveImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v0}, Lcom/android/camera/RefocusActivity;->finish()V

    .line 232
    return-void
.end method
