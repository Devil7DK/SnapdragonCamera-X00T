.class Lcom/android/camera/RefocusActivity$DepthMap;
.super Ljava/lang/Object;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepthMap"
.end annotation


# static fields
.field private static final W_SIZE:I = 0x3d


# instance fields
.field private mData:[B

.field private mFail:Z

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/RefocusActivity;Ljava/lang/String;)V
    .locals 8
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 293
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-boolean v5, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    .line 294
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 297
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    .line 298
    iget-object v6, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I

    .line 299
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    array-length v2, v6

    .line 305
    .local v2, "length":I
    const/16 v6, 0x19

    if-le v2, v6, :cond_1

    .line 306
    iget-object v6, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    add-int/lit8 v7, v2, -0x19

    aget-byte v6, v6, v7

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    .line 307
    add-int/lit8 v4, v2, -0x18

    invoke-direct {p0, v4}, Lcom/android/camera/RefocusActivity$DepthMap;->readInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    .line 308
    add-int/lit8 v4, v2, -0x14

    invoke-direct {p0, v4}, Lcom/android/camera/RefocusActivity$DepthMap;->readInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    .line 310
    :cond_1
    iget v4, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    iget v6, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    mul-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x19

    if-le v4, v2, :cond_2

    .line 311
    iput-boolean v5, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    .line 313
    :cond_2
    return-void

    .line 300
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-array v6, v4, [B

    iput-object v6, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    goto :goto_0
.end method

.method private readInteger(I)I
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .line 369
    .local v1, "result":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 370
    shl-int/lit8 v1, v1, 0x8

    .line 371
    iget-object v2, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return v1
.end method


# virtual methods
.method public getDepth(FF)I
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    if-nez v15, :cond_0

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, p1, v15

    if-gtz v15, :cond_0

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, p2, v15

    if-lez v15, :cond_2

    .line 317
    :cond_0
    invoke-static {}, Lcom/android/camera/RefocusActivity;->access$800()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v5, v15, -0x1

    .line 364
    :cond_1
    return v5

    .line 320
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v15, v15

    mul-float v15, v15, p1

    float-to-int v10, v15

    .line 321
    .local v10, "newX":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v15, v15

    mul-float v15, v15, p2

    float-to-int v11, v15

    .line 322
    .local v11, "newY":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v15}, Lcom/android/camera/RefocusActivity;->access$1500(Lcom/android/camera/RefocusActivity;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v15}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v15

    if-nez v15, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v15, v15

    mul-float v15, v15, p1

    float-to-int v10, v15

    .line 325
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v15, v15

    mul-float v15, v15, p2

    float-to-int v11, v15

    .line 326
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v15}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v15

    const/16 v16, 0x5a

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v15, v15

    mul-float v15, v15, p2

    float-to-int v10, v15

    .line 328
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v15, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v11, v15

    .line 338
    :cond_4
    :goto_0
    const/16 v15, 0x100

    new-array v6, v15, [I

    .line 339
    .local v6, "hist":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v15, 0x100

    if-ge v7, v15, :cond_7

    .line 340
    const/4 v15, 0x0

    aput v15, v6, v7

    .line 339
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 329
    .end local v6    # "hist":[I
    .end local v7    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v15}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v15

    const/16 v16, 0xb4

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 330
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v15, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v10, v15

    .line 331
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v15, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v11, v15

    goto :goto_0

    .line 332
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v15}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v15

    const/16 v16, 0x10e

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 333
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v15, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v10, v15

    .line 334
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v15, v15

    mul-float v15, v15, p1

    float-to-int v11, v15

    goto :goto_0

    .line 343
    .restart local v6    # "hist":[I
    .restart local v7    # "i":I
    :cond_7
    add-int/lit8 v15, v10, -0x1e

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 344
    .local v3, "colStart":I
    add-int/lit8 v15, v3, 0x3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 345
    .local v2, "colEnd":I
    add-int/lit8 v15, v11, -0x1e

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 346
    .local v14, "rowStart":I
    add-int/lit8 v15, v14, 0x3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 348
    .local v13, "rowEnd":I
    move v1, v3

    .local v1, "col":I
    :goto_2
    if-ge v1, v2, :cond_9

    .line 349
    move v12, v14

    .local v12, "row":I
    :goto_3
    if-ge v12, v13, :cond_8

    .line 350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    move/from16 v16, v0

    mul-int v16, v16, v12

    add-int v16, v16, v1

    aget-byte v8, v15, v16

    .line 351
    .local v8, "level":I
    aget v15, v6, v8

    add-int/lit8 v15, v15, 0x1

    aput v15, v6, v8

    .line 349
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 348
    .end local v8    # "level":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 355
    .end local v12    # "row":I
    :cond_9
    invoke-static {}, Lcom/android/camera/RefocusActivity;->access$800()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v5, v15, -0x1

    .line 356
    .local v5, "depth":I
    const/4 v9, 0x0

    .line 357
    .local v9, "maxCount":I
    const/4 v7, 0x0

    :goto_4
    const/16 v15, 0x100

    if-ge v7, v15, :cond_1

    .line 358
    aget v4, v6, v7

    .line 359
    .local v4, "count":I
    if-eqz v4, :cond_b

    if-eqz v9, :cond_a

    if-le v4, v9, :cond_b

    .line 360
    :cond_a
    move v9, v4

    .line 361
    move v5, v7

    .line 357
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method
