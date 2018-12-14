.class Lcom/android/camera/BestpictureActivity$SaveImageTask;
.super Landroid/os/AsyncTask;
.source "BestpictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BestpictureActivity;
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
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BestpictureActivity;Lcom/android/camera/BestpictureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p2, "x1"    # Lcom/android/camera/BestpictureActivity$1;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity$SaveImageTask;-><init>(Lcom/android/camera/BestpictureActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 633
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/BestpictureActivity$SaveImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 13
    .param p1, "path"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 636
    .local v2, "captureStartTime":J
    iget-object v12, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v12}, Lcom/android/camera/BestpictureActivity;->access$2100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 637
    iget-object v12, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v12}, Lcom/android/camera/BestpictureActivity;->access$2100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v6

    .line 638
    .local v6, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v6, :cond_0

    move-object v9, v11

    .line 639
    .local v9, "title":Ljava/lang/String;
    :goto_0
    const-string v12, "jpeg"

    invoke-static {v9, v12}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 641
    .local v8, "outPath":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 642
    .local v7, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v1, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 643
    .local v1, "in":Ljava/io/FileInputStream;
    const/16 v12, 0x1000

    new-array v0, v12, [B

    .line 645
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_1

    .line 646
    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 650
    .end local v0    # "buf":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v12

    .line 652
    :goto_2
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 653
    .local v10, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v12, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 654
    .local v4, "intent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v12, v4}, Lcom/android/camera/BestpictureActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    return-object v11

    .line 638
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "outPath":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v9, v6, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 648
    .restart local v0    # "buf":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "outPath":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 649
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 633
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/BestpictureActivity$SaveImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 659
    return-void
.end method
