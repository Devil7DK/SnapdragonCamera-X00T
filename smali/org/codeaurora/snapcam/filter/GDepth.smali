.class public Lorg/codeaurora/snapcam/filter/GDepth;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;
    }
.end annotation


# static fields
.field public static final FORMAT_8_BIT:Ljava/lang/String; = "8-bit"

.field public static final FORMAT_RANGE_INVERSE:Ljava/lang/String; = "RangeInverse"

.field public static final FORMAT_RANGLE_LINEAR:Ljava/lang/String; = "RangeLinear"

.field private static final MIME:Ljava/lang/String; = "image/jpeg"

.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field public static final PREFIX:Ljava/lang/String; = "GDepth"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_FAR:Ljava/lang/String; = "Far"

.field public static final PROPERTY_FORMAT:Ljava/lang/String; = "Format"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"

.field public static final PROPERTY_NEAR:Ljava/lang/String; = "Near"

.field public static final PROPERTY_ROI_HEIGHT:Ljava/lang/String; = "RoiHeight"

.field public static final PROPERTY_ROI_WIDTH:Ljava/lang/String; = "RoiWidth"

.field public static final PROPERTY_ROI_X:Ljava/lang/String; = "RoiX"

.field public static final PROPERTY_ROI_Y:Ljava/lang/String; = "RoiY"

.field private static final TAG:Ljava/lang/String; = "Flow_GDepth"


# instance fields
.field private mData:Ljava/lang/String;

.field private mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

.field private final mFormat:Ljava/lang/String;

.field private mGdepthJpeg:[B

.field private mMap:[I

.field private mRoi:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "GDepth"

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

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "near"    # I
    .param p2, "far"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "8-bit"

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mFormat:Ljava/lang/String;

    .line 284
    iput-object p3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    .line 285
    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;)V
    .locals 4
    .param p1, "depthMap"    # Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v3, "8-bit"

    iput-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mFormat:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .line 95
    iget-object v3, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->roi:Landroid/graphics/Rect;

    iput-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mRoi:Landroid/graphics/Rect;

    .line 96
    if-eqz p1, :cond_0

    iget-object v3, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 100
    iget-object v3, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    aget-byte v3, v3, v2

    and-int/lit16 v1, v3, 0xff

    .line 101
    .local v1, "gray":I
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 102
    .local v0, "color":I
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    aput v0, v3, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "color":I
    .end local v1    # "gray":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "gdepthJpeg"    # [B

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "8-bit"

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mFormat:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    .line 109
    return-void
.end method

.method private compressToJPEG([B)[B
    .locals 5
    .param p1, "image"    # [B

    .prologue
    .line 208
    const-string v2, "Flow_GDepth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressToJPEG byte[].size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 211
    const-string v2, "Flow_GDepth"

    const-string v3, " buffer can\'t be decoded "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v2, 0x0

    .line 216
    :goto_0
    return-object v2

    .line 214
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 216
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static createGDepth(Lcom/adobe/xmp/XMPMeta;)Lorg/codeaurora/snapcam/filter/GDepth;
    .locals 13
    .param p0, "xmpMeta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    .line 288
    :try_start_0
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "Near"

    .line 289
    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 288
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 290
    .local v6, "near":I
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "Far"

    .line 291
    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 290
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "far":I
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "Data"

    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    .line 293
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    .local v0, "data":Ljava/lang/String;
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "Format"

    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    .line 295
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, "format":Ljava/lang/String;
    const-string v10, "Flow_GDepth"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new GDepth: nerar="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " far="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "format="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "RoiX"

    .line 298
    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 297
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 299
    .local v8, "x":I
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "RoiY"

    .line 300
    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 299
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 301
    .local v9, "y":I
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "RoiWidth"

    .line 302
    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 301
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 303
    .local v7, "width":I
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v11, "RoiHeight"

    .line 304
    invoke-interface {p0, v10, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 303
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 305
    .local v5, "height":I
    const-string v10, "Flow_GDepth"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " width="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v4, Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-direct {v4, v6, v2, v0}, Lorg/codeaurora/snapcam/filter/GDepth;-><init>(IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "far":I
    .end local v3    # "format":Ljava/lang/String;
    .end local v5    # "height":I
    .end local v6    # "near":I
    .end local v7    # "width":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :goto_0
    return-object v4

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v10, "Flow_GDepth"

    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 310
    :catch_1
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "Flow_GDepth"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createGDepth(Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;)Lorg/codeaurora/snapcam/filter/GDepth;
    .locals 2
    .param p0, "depthMap"    # Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .prologue
    .line 141
    new-instance v0, Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-direct {v0, p0}, Lorg/codeaurora/snapcam/filter/GDepth;-><init>(Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;)V

    .line 142
    .local v0, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/GDepth;->encoding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    .end local v0    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :goto_0
    return-object v0

    .restart local v0    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createGDepth([B)Lorg/codeaurora/snapcam/filter/GDepth;
    .locals 2
    .param p0, "gdepthJpeg"    # [B

    .prologue
    .line 149
    new-instance v0, Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-direct {v0, p0}, Lorg/codeaurora/snapcam/filter/GDepth;-><init>([B)V

    .line 150
    .local v0, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/GDepth;->encodeDepthmapJpeg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    .end local v0    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :goto_0
    return-object v0

    .restart local v0    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private encodeDepthmapJpeg()Z
    .locals 4

    .prologue
    .line 177
    const-string v2, "Flow_GDepth"

    const-string v3, "encodeDepthmapJpeg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "result":Z
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    invoke-direct {p0, v2}, Lorg/codeaurora/snapcam/filter/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "base64String":Ljava/lang/String;
    const/4 v1, 0x1

    .line 182
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    .line 187
    .end local v0    # "base64String":Ljava/lang/String;
    :goto_0
    return v1

    .line 184
    :cond_0
    const-string v2, "Flow_GDepth"

    const-string v3, "compressToJPEG failure"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private encoding()Z
    .locals 9

    .prologue
    .line 157
    const-string v5, "Flow_GDepth"

    const-string v6, "encoding"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, "result":Z
    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v6, v6, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->width:I

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v7, v7, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 161
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 164
    .local v2, "jpegBytes":[B
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    .line 165
    if-eqz v2, :cond_0

    .line 166
    invoke-direct {p0, v2}, Lorg/codeaurora/snapcam/filter/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "base64String":Ljava/lang/String;
    const/4 v4, 0x1

    .line 168
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    .line 173
    .end local v0    # "base64String":Ljava/lang/String;
    :goto_0
    return v4

    .line 170
    :cond_0
    const-string v5, "Flow_GDepth"

    const-string v6, "compressToJPEG failure"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveAsFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v5, "Flow_GDepth"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAsFile sdcard/DDM/Flow_GDepth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdcard/DDM/Flow_GDepth"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 233
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 235
    .local v0, "bytes":[B
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    if-eqz v4, :cond_2

    .line 242
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 248
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 243
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Flow_GDepth"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 245
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 237
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 238
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "Flow_GDepth"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    if-eqz v3, :cond_0

    .line 242
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 243
    :catch_2
    move-exception v1

    .line 244
    const-string v5, "Flow_GDepth"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 242
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 245
    :cond_1
    :goto_3
    throw v5

    .line 243
    :catch_3
    move-exception v1

    .line 244
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "Flow_GDepth"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 237
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private saveAsJPEG([B)V
    .locals 8
    .param p1, "bytes"    # [B

    .prologue
    .line 251
    const-string v4, "Flow_GDepth"

    const-string v5, "saveAsJPEG"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_depth.JPEG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 255
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    if-eqz v3, :cond_2

    .line 262
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 268
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 263
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Flow_GDepth"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 265
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 258
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "Flow_GDepth"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    if-eqz v2, :cond_0

    .line 262
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 263
    :catch_2
    move-exception v0

    .line 264
    const-string v4, "Flow_GDepth"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 262
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 265
    :cond_1
    :goto_3
    throw v4

    .line 263
    :catch_3
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Flow_GDepth"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 257
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private serializeAsBase64Str([B)Ljava/lang/String;
    .locals 2
    .param p1, "image"    # [B

    .prologue
    .line 224
    const-string v0, "Flow_GDepth"

    const-string v1, "serializeAsBase64Str"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 317
    const-string v4, "Flow_GDepth"

    const-string v5, "decode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 319
    .local v0, "depthBuffer":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/GDepth;->saveAsJPEG([B)V

    .line 323
    array-length v4, v0

    new-array v3, v4, [I

    .line 324
    .local v3, "intDepthBuffer":[I
    array-length v4, v0

    new-array v2, v4, [I

    .line 327
    .local v2, "intDepth":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 328
    aget-byte v4, v0, v1

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    aput v4, v3, v1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return v6
.end method

.method public getBitGdepthBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 197
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    array-length v4, v4

    new-array v1, v4, [I

    .line 198
    .local v1, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 199
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    aget v3, v4, v2

    .line 200
    .local v3, "p":I
    and-int/lit16 v4, v3, 0xff

    shl-int/lit8 v4, v4, 0x18

    aput v4, v1, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "p":I
    :cond_0
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v4, v4, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->width:I

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v5, v5, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDepthJpeg()[B
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    return-object v0
.end method

.method public getFar()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0xff

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "8-bit"

    return-object v0
.end method

.method public getGdepthBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 191
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v2, v2, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->width:I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v3, v3, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getNear()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getRoi()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mRoi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setRoi(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "roi"    # Landroid/graphics/Rect;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mRoi:Landroid/graphics/Rect;

    .line 139
    return-void
.end method
