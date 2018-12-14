.class public Lcom/android/camera/util/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/XmpUtil$Section;
    }
.end annotation


# static fields
.field private static final EXTENDED_XMP_HEADER_SIGNATURE:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/\u0000"

.field private static final EXTEND_XMP_HEADER_SIZE:I = 0x4b

.field private static final GOOGLE_PANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final MAX_EXTENDED_XMP_BUFFER_SIZE:I = 0xfde8

.field private static final MAX_XMP_BUFFER_SIZE:I = 0xffde

.field private static final M_APP1:I = 0xe1

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final NOTE_PREFIX:Ljava/lang/String; = "xmpNote"

.field private static final PANO_PREFIX:Ljava/lang/String; = "GPano"

.field private static final TAG:Ljava/lang/String; = "XmpUtil"

.field private static final XMP_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_SIZE:I = 0x1d

.field private static final XMP_NOTE_NAMESPACE:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/panorama/"

    const-string v3, "GPano"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.adobe.com/xmp/note/"

    const-string v3, "xmpNote"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void

    .line 88
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 89
    .restart local v0    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSection([B[B)Lcom/android/camera/util/XmpUtil$Section;
    .locals 7
    .param p0, "portionOfExtendedMeta"    # [B
    .param p1, "headerBytes"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 451
    array-length v4, p0

    const v5, 0xfde8

    if-le v4, v5, :cond_0

    .line 453
    const-string v4, "XmpUtil"

    const-string v5, "createSection fail exceed max size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 468
    :goto_0
    return-object v1

    .line 457
    :cond_0
    array-length v4, p0

    add-int/lit8 v4, v4, 0x4b

    new-array v2, v4, [B

    .line 458
    .local v2, "xmpdata":[B
    array-length v4, p1

    invoke-static {p1, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 460
    array-length v4, p1

    array-length v5, p0

    invoke-static {p0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 461
    new-instance v1, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v1, v3}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    .line 462
    .local v1, "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    const/16 v3, 0xe1

    iput v3, v1, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 464
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    iput v3, v1, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 465
    iput-object v2, v1, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 466
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 467
    .local v0, "byteBuffer2":Ljava/nio/ByteBuffer;
    const-string v3, "XmpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fullLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x43

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x47

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/android/camera/util/XmpUtil$Section;
    .locals 10
    .param p0, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/16 v9, 0x1d

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 421
    :try_start_0
    new-instance v2, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 422
    .local v2, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 426
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 427
    invoke-static {p0, v2}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    .local v0, "buffer":[B
    array-length v6, v0

    const v7, 0xffde

    if-le v6, v7, :cond_0

    .line 433
    const-string v6, "XmpUtil"

    const-string v7, "exceed max size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 446
    .end local v0    # "buffer":[B
    .end local v2    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :goto_0
    return-object v3

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v6, "XmpUtil"

    const-string v7, "Serialize xmp failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 430
    goto :goto_0

    .line 437
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :cond_0
    array-length v6, v0

    add-int/lit8 v6, v6, 0x1d

    new-array v4, v6, [B

    .line 438
    .local v4, "xmpdata":[B
    const-string v6, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v8, v4, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 439
    array-length v6, v0

    invoke-static {v0, v8, v4, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 440
    new-instance v3, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v3, v5}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    .line 441
    .local v3, "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    const/16 v5, 0xe1

    iput v5, v3, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 443
    array-length v5, v4

    add-int/lit8 v5, v5, 0x2

    iput v5, v3, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 444
    iput-object v4, v3, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    goto :goto_0
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractOrCreateXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 156
    .local v0, "meta":Lcom/adobe/xmp/XMPMeta;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .end local v0    # "meta":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    return-object v0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 121
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 122
    .local v5, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    if-nez v5, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v3

    .line 126
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/util/XmpUtil$Section;

    .line 127
    .local v4, "section":Lcom/android/camera/util/XmpUtil$Section;
    iget-object v7, v4, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/android/camera/util/XmpUtil;->hasXMPHeader([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    iget-object v6, v4, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v6}, Lcom/android/camera/util/XmpUtil;->getXMPContentEnd([B)I

    move-result v2

    .line 129
    .local v2, "end":I
    add-int/lit8 v6, v2, -0x1d

    new-array v0, v6, [B

    .line 130
    .local v0, "buffer":[B
    iget-object v6, v4, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    const/16 v7, 0x1d

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 133
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 134
    .local v3, "result":Lcom/adobe/xmp/XMPMeta;
    goto :goto_0

    .line 135
    .end local v3    # "result":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v6, "XmpUtil"

    const-string v7, "XMP parse error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const-string v2, "XmpUtil"

    const-string v3, "XMP parse: only jpeg file is supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-object v1

    .line 107
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "XmpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getGUID([B)Ljava/lang/String;
    .locals 10
    .param p0, "src"    # [B

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 619
    .local v2, "digester":Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 620
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 622
    .local v1, "digest":[B
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 623
    .local v4, "formatter":Ljava/util/Formatter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 624
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v1, v5

    add-int/lit16 v9, v9, 0x100

    rem-int/lit16 v9, v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "digest":[B
    .end local v2    # "digester":Ljava/security/MessageDigest;
    .end local v4    # "formatter":Ljava/util/Formatter;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 627
    .local v3, "exception":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "XmpUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get md5 instance failure"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v6, 0x0

    .line 631
    .end local v3    # "exception":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v6

    .restart local v1    # "digest":[B
    .restart local v2    # "digester":Ljava/security/MessageDigest;
    .restart local v4    # "formatter":Ljava/util/Formatter;
    .restart local v5    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static getXMPContentEnd([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 333
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 334
    aget-byte v1, p0, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 335
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    .line 336
    add-int/lit8 v1, v0, 0x1

    .line 341
    :goto_1
    return v1

    .line 333
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    :cond_1
    array-length v1, p0

    goto :goto_1
.end method

.method private static hasXMPHeader([B)Z
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/16 v4, 0x1d

    const/4 v2, 0x0

    .line 307
    array-length v3, p0

    if-ge v3, v4, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v2

    .line 311
    :cond_1
    const/16 v3, 0x1d

    :try_start_0
    new-array v1, v3, [B

    .line 312
    .local v1, "header":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {p0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 313
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    const/4 v2, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "header":[B
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 13
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    const/16 v12, 0x1d

    const/16 v11, 0xe1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 251
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v5, :cond_1

    :cond_0
    move-object p0, v3

    .line 297
    .end local p0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :goto_0
    return-object p0

    .line 256
    .restart local p0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :cond_1
    :try_start_0
    new-instance v4, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 257
    .local v4, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 261
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 262
    invoke-static {p1, v4}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    .local v0, "buffer":[B
    array-length v8, v0

    const v10, 0xffde

    if-le v8, v10, :cond_2

    move-object p0, v3

    .line 269
    goto :goto_0

    .line 263
    .end local v0    # "buffer":[B
    .end local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v8, "XmpUtil"

    const-string v9, "Serialize xmp failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v3

    .line 265
    goto :goto_0

    .line 272
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :cond_2
    array-length v8, v0

    add-int/lit8 v8, v8, 0x1d

    new-array v7, v8, [B

    .line 273
    .local v7, "xmpdata":[B
    const-string v8, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9, v7, v9, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 274
    array-length v8, v0

    invoke-static {v0, v9, v7, v12, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    new-instance v6, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v6, v3}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    .line 276
    .local v6, "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    iput v11, v6, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 278
    array-length v8, v7

    add-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 279
    iput-object v7, v6, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 283
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/util/XmpUtil$Section;

    iget v8, v8, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    if-ne v8, v11, :cond_3

    .line 284
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/util/XmpUtil$Section;

    iget-object v8, v8, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v8}, Lcom/android/camera/util/XmpUtil;->hasXMPHeader([B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 286
    invoke-interface {p0, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 281
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v3, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/util/XmpUtil$Section;

    iget v8, v8, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    if-ne v8, v11, :cond_5

    .line 294
    .local v5, "position":I
    :goto_2
    invoke-interface {p0, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p0, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v3

    .line 297
    goto/16 :goto_0

    .end local v5    # "position":I
    :cond_5
    move v5, v9

    .line 293
    goto :goto_2
.end method

.method private static insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .local p1, "xmpSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 601
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 602
    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return-object v0

    .line 607
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v0, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/XmpUtil$Section;

    iget v2, v2, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    const/16 v4, 0xe1

    if-ne v2, v4, :cond_2

    .line 609
    .local v1, "position":I
    :goto_1
    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .end local v1    # "position":I
    :cond_2
    move v1, v3

    .line 608
    goto :goto_1
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "readMetaOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0xff

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ne v9, v13, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/16 v10, 0xd8

    if-eq v9, v10, :cond_3

    .line 408
    :cond_0
    if-eqz p0, :cond_1

    .line 410
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object v7, v8

    .line 413
    :cond_2
    :goto_1
    return-object v7

    .line 358
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v7, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_11

    .line 361
    if-eq v0, v13, :cond_5

    .line 408
    if-eqz p0, :cond_4

    .line 410
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_3
    move-object v7, v8

    .line 413
    goto :goto_1

    .line 365
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eq v0, v13, :cond_5

    .line 367
    if-ne v0, v12, :cond_7

    .line 408
    if-eqz p0, :cond_6

    .line 410
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_4
    move-object v7, v8

    .line 413
    goto :goto_1

    .line 370
    :cond_7
    move v5, v0

    .line 371
    .local v5, "marker":I
    const/16 v9, 0xda

    if-ne v5, v9, :cond_9

    .line 374
    if-nez p1, :cond_8

    .line 375
    :try_start_6
    new-instance v6, Lcom/android/camera/util/XmpUtil$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    .line 376
    .local v6, "section":Lcom/android/camera/util/XmpUtil$Section;
    iput v5, v6, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 377
    const/4 v9, -0x1

    iput v9, v6, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 378
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 379
    iget-object v9, v6, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    array-length v11, v11

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 380
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 408
    .end local v6    # "section":Lcom/android/camera/util/XmpUtil$Section;
    :cond_8
    if-eqz p0, :cond_2

    .line 410
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 411
    :catch_0
    move-exception v8

    goto :goto_1

    .line 384
    :cond_9
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 385
    .local v3, "lh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    .line 386
    .local v4, "ll":I
    if-eq v3, v12, :cond_a

    if-ne v4, v12, :cond_c

    .line 408
    :cond_a
    if-eqz p0, :cond_b

    .line 410
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_b
    :goto_5
    move-object v7, v8

    .line 413
    goto :goto_1

    .line 389
    :cond_c
    shl-int/lit8 v9, v3, 0x8

    or-int v2, v9, v4

    .line 390
    .local v2, "length":I
    if-eqz p1, :cond_d

    const/16 v9, 0xe1

    if-ne v0, v9, :cond_f

    .line 391
    :cond_d
    :try_start_a
    new-instance v6, Lcom/android/camera/util/XmpUtil$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    .line 392
    .restart local v6    # "section":Lcom/android/camera/util/XmpUtil$Section;
    iput v5, v6, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 393
    iput v2, v6, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 394
    add-int/lit8 v9, v2, -0x2

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 395
    iget-object v9, v6, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 396
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 404
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v6    # "section":Lcom/android/camera/util/XmpUtil$Section;
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :catch_1
    move-exception v1

    .line 405
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    const-string v9, "XmpUtil"

    const-string v10, "Could not parse file."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 408
    if-eqz p0, :cond_e

    .line 410
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_e
    :goto_6
    move-object v7, v8

    .line 413
    goto/16 :goto_1

    .line 400
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v2    # "length":I
    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :cond_f
    add-int/lit8 v9, v2, -0x2

    int-to-long v10, v9

    :try_start_d
    invoke-virtual {p0, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 408
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_10

    .line 410
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 413
    :cond_10
    :goto_7
    throw v8

    .line 408
    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :cond_11
    if-eqz p0, :cond_2

    .line 410
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    .line 411
    :catch_2
    move-exception v8

    goto/16 :goto_1

    .end local v0    # "c":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :catch_4
    move-exception v9

    goto/16 :goto_3

    :catch_5
    move-exception v9

    goto/16 :goto_4

    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    :catch_6
    move-exception v9

    goto :goto_5

    .end local v0    # "c":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    goto :goto_7
.end method

.method private static splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;
    .locals 22
    .param p0, "extendedXMPMetaBytes"    # [B
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v16, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    const v19, 0xfde8

    div-int v17, v18, v19

    .line 489
    .local v17, "splitNum":I
    const v18, 0xfde8

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 490
    .local v13, "portion":[B
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 491
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 493
    .local v5, "extendedXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    const/16 v18, 0x4b

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 494
    .local v7, "headerBytes":[B
    const/4 v9, 0x0

    .line 495
    .local v9, "index":I
    const-string v18, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 496
    const-string v18, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v9, v9, v18

    .line 498
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v7, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int v9, v9, v18

    .line 501
    const-string v18, "XmpUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "buffer.length="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 503
    .local v6, "fullLengthBytes":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 504
    .local v10, "intBuffer":Ljava/nio/ByteBuffer;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 505
    const/16 v18, 0x0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v6, v0, v7, v9, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 506
    add-int/lit8 v9, v9, 0x4

    .line 508
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v12, v0, [B

    .line 509
    .local v12, "offsetBytes":[B
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 510
    .local v11, "offsetBuffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 511
    const/16 v18, 0x0

    const v19, 0xfde8

    mul-int v19, v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 512
    const/16 v18, 0x0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v12, v0, v7, v9, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 514
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-static {v13, v7}, Lcom/android/camera/util/XmpUtil;->createSection([B[B)Lcom/android/camera/util/XmpUtil$Section;

    move-result-object v5

    .line 516
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 519
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    const v19, 0xfde8

    mul-int v19, v19, v17

    sub-int v15, v18, v19

    .line 520
    .local v15, "remainSize":I
    if-lez v15, :cond_1

    .line 521
    const/16 v18, 0x0

    const v19, 0xfde8

    mul-int v19, v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 522
    const/16 v18, 0x0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v12, v0, v7, v9, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 524
    new-array v14, v15, [B

    .line 525
    .local v14, "remain":[B
    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 526
    invoke-static {v14, v7}, Lcom/android/camera/util/XmpUtil;->createSection([B[B)Lcom/android/camera/util/XmpUtil$Section;

    move-result-object v5

    .line 527
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v14    # "remain":[B
    :cond_1
    return-object v16
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    const/16 v5, 0xff

    .line 233
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 234
    const/16 v3, 0xd8

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/XmpUtil$Section;

    .line 236
    .local v2, "section":Lcom/android/camera/util/XmpUtil$Section;
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 237
    iget v4, v2, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 238
    iget v4, v2, Lcom/android/camera/util/XmpUtil$Section;->length:I

    if-lez v4, :cond_0

    .line 240
    iget v4, v2, Lcom/android/camera/util/XmpUtil$Section;->length:I

    shr-int/lit8 v0, v4, 0x8

    .line 241
    .local v0, "lh":I
    iget v4, v2, Lcom/android/camera/util/XmpUtil$Section;->length:I

    and-int/lit16 v1, v4, 0xff

    .line 242
    .local v1, "ll":I
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 243
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 245
    .end local v0    # "lh":I
    .end local v1    # "ll":I
    :cond_0
    iget-object v4, v2, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 247
    .end local v2    # "section":Lcom/android/camera/util/XmpUtil$Section;
    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-static {p0, v2}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-static {v1, p2}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object v1

    .line 206
    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    :try_start_0
    invoke-static {p1, v1}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz p1, :cond_2

    .line 218
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 224
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "XmpUtil"

    const-string v4, "Write to stream failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    if-eqz p1, :cond_0

    .line 218
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v3

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_3

    .line 218
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 221
    :cond_3
    :goto_2
    throw v2

    .line 219
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 11
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "standardMeta"    # Lcom/adobe/xmp/XMPMeta;
    .param p3, "extendedMeta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    .line 546
    :try_start_0
    new-instance v5, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 547
    .local v5, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 551
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 552
    invoke-static {p3, v5}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 558
    .local v0, "buffer":[B
    invoke-static {v0}, Lcom/android/camera/util/XmpUtil;->getGUID([B)Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, "guid":Ljava/lang/String;
    :try_start_1
    const-string v9, "http://ns.adobe.com/xmp/note/"

    const-string v10, "HasExtendedXMP"

    invoke-interface {p2, v9, v10, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v6

    .line 566
    .local v6, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v8, "xmpSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-static {p2}, Lcom/android/camera/util/XmpUtil;->createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/android/camera/util/XmpUtil$Section;

    move-result-object v7

    .line 568
    .local v7, "standardXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    if-nez v7, :cond_1

    .line 569
    const-string v9, "XmpUtil"

    const-string v10, "create standard meta section error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v9, 0x0

    .line 596
    .end local v0    # "buffer":[B
    .end local v4    # "guid":Ljava/lang/String;
    .end local v5    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    .end local v6    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .end local v7    # "standardXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    .end local v8    # "xmpSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :cond_0
    :goto_0
    return v9

    .line 553
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v9, "XmpUtil"

    const-string v10, "Serialize extended xmp failed"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    const/4 v9, 0x0

    goto :goto_0

    .line 561
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "guid":Ljava/lang/String;
    .restart local v5    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :catch_1
    move-exception v2

    .line 562
    .local v2, "exception":Lcom/adobe/xmp/XMPException;
    const-string v9, "XmpUtil"

    const-string v10, "set XMPMeta Property"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    const/4 v9, 0x0

    goto :goto_0

    .line 572
    .end local v2    # "exception":Lcom/adobe/xmp/XMPException;
    .restart local v6    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .restart local v7    # "standardXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    .restart local v8    # "xmpSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :cond_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {v0, v4}, Lcom/android/camera/util/XmpUtil;->splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 575
    .local v3, "extendedSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    invoke-static {v6, v8}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 577
    if-nez v6, :cond_2

    .line 578
    const-string v9, "XmpUtil"

    const-string v10, "Insert XMP fialed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v9, 0x0

    goto :goto_0

    .line 583
    :cond_2
    :try_start_2
    invoke-static {p1, v6}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    if-eqz p1, :cond_3

    .line 590
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 596
    :cond_3
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 584
    :catch_2
    move-exception v1

    .line 585
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v9, "XmpUtil"

    const-string v10, "Write to stream failed"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 586
    const/4 v9, 0x0

    .line 588
    if-eqz p1, :cond_0

    .line 590
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 591
    :catch_3
    move-exception v10

    goto :goto_0

    .line 588
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz p1, :cond_4

    .line 590
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 593
    :cond_4
    :goto_2
    throw v9

    .line 591
    :catch_4
    move-exception v9

    goto :goto_1

    :catch_5
    move-exception v10

    goto :goto_2
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    const-string v5, "XmpUtil"

    const-string v6, "XMP parse: only jpeg file is supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return v4

    .line 168
    :cond_1
    const/4 v3, 0x0

    .line 170
    .local v3, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v3

    .line 171
    invoke-static {v3, p1}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 172
    if-eqz v3, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 182
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    if-eqz v2, :cond_2

    .line 190
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 196
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "XmpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v5, "XmpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write file failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz v1, :cond_0

    .line 190
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 191
    :catch_2
    move-exception v5

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 190
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 193
    :cond_3
    :goto_4
    throw v4

    .line 191
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    goto :goto_4

    .line 188
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 184
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
