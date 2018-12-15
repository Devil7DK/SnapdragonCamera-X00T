.class public Lcom/android/camera/SnapDragon;
.super Ljava/lang/Object;
.source "SnapDragon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize()V
    .locals 5

    .line 9
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 10
    .local v0, "a":[B
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    .line 11
    .local v1, "b":[B
    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    .line 13
    .local v2, "c":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/android/camera/SnapDragon;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    return-void

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :array_0
    .array-data 1
        0x72t
        0x6ft
        0x2et
        0x70t
        0x72t
        0x6ft
        0x64t
        0x75t
        0x63t
        0x74t
        0x2et
        0x64t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x58t
        0x30t
        0x30t
        0x54t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x6et
        0x61t
        0x62t
        0x6ct
        0x65t
        0x20t
        0x74t
        0x6ft
        0x20t
        0x69t
        0x6et
        0x69t
        0x74t
        0x69t
        0x61t
        0x6ct
        0x69t
        0x7at
        0x65t
        0x20t
        0x43t
        0x61t
        0x6dt
        0x65t
        0x72t
        0x61t
        0x21t
    .end array-data
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "k"    # Ljava/lang/String;

    .line 18
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 19
    .local v0, "ps":[B
    const/4 v1, 0x0

    .line 20
    .local v1, "p":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 23
    .local v2, "b":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v5, v4

    const/4 v4, 0x1

    aput-object p0, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    move-object v1, v3

    .line 24
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 27
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 29
    :cond_0
    nop

    .line 33
    nop

    .line 35
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    goto :goto_0

    :catch_0
    move-exception v4

    .line 38
    :goto_0
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 29
    :cond_1
    return-object v3

    .line 33
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 30
    :catch_1
    move-exception v3

    .line 31
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    if-eqz v2, :cond_2

    .line 35
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 36
    goto :goto_1

    :catch_2
    move-exception v5

    .line 38
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 31
    :cond_3
    return-object v4

    .line 33
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_4

    .line 35
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 36
    goto :goto_3

    :catch_3
    move-exception v4

    .line 38
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 39
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_5
    throw v3

    nop

    :array_0
    .array-data 1
        0x2ft
        0x2ft
        0x73t
        0x79t
        0x73t
        0x74t
        0x65t
        0x6dt
        0x2ft
        0x2ft
        0x62t
        0x69t
        0x6et
        0x2ft
        0x2ft
        0x67t
        0x65t
        0x74t
        0x70t
        0x72t
        0x6ft
        0x70t
    .end array-data
.end method

