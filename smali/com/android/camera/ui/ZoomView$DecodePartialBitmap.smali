.class Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
.super Landroid/os/AsyncTask;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodePartialBitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/RectF;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ZoomView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ZoomView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p2, "x1"    # Lcom/android/camera/ui/ZoomView$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/android/camera/ui/ZoomView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "params"    # [Landroid/graphics/RectF;

    .prologue
    .line 56
    const/4 v3, 0x0

    aget-object v10, p1, v3

    .line 60
    .local v10, "endRect":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v5}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v6}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-direct {v11, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 61
    .local v11, "fullResRect":Landroid/graphics/RectF;
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v17, "rotationMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/android/camera/ui/ZoomView;->access$200(Lcom/android/camera/ui/ZoomView;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 63
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 66
    iget v3, v11, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v4, v11, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 67
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v6}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    .line 68
    invoke-static {v8}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    invoke-direct {v3, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 67
    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 71
    new-instance v20, Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 72
    .local v20, "visibleRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v5}, Lcom/android/camera/ui/ZoomView;->access$300(Lcom/android/camera/ui/ZoomView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v6}, Lcom/android/camera/ui/ZoomView;->access$400(Lcom/android/camera/ui/ZoomView;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 77
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v14, "mapping":Landroid/graphics/Matrix;
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v14, v10, v11, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    new-instance v18, Landroid/graphics/RectF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .local v18, "visibleAfterRotation":Landroid/graphics/RectF;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 84
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    .line 85
    .local v19, "visibleInImage":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v12, "invertRotation":Landroid/graphics/Matrix;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 87
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 90
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .local v16, "region":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 94
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v5}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v6}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 96
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    const-string v3, "ZoomView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size for partial region. Region: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v3, 0x0

    .line 135
    :goto_0
    return-object v3

    .line 101
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    const/4 v3, 0x0

    goto :goto_0

    .line 105
    :cond_2
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 107
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/android/camera/ui/ZoomView;->access$200(Lcom/android/camera/ui/ZoomView;)I

    move-result v3

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_4

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/ZoomView;->access$500(Lcom/android/camera/ui/ZoomView;II)I

    move-result v3

    iput v3, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    if-nez v3, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/android/camera/ui/ZoomView;->access$700(Lcom/android/camera/ui/ZoomView;)Ljava/io/InputStream;

    move-result-object v13

    .line 120
    .local v13, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    const/4 v4, 0x0

    invoke-static {v13, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/ZoomView;->access$602(Lcom/android/camera/ui/ZoomView;Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/BitmapRegionDecoder;

    .line 121
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v13    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    if-nez v3, :cond_5

    .line 127
    const/4 v3, 0x0

    goto :goto_0

    .line 114
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/ZoomView;->access$500(Lcom/android/camera/ui/ZoomView;II)I

    move-result v3

    iput v3, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 122
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 123
    .local v9, "e":Ljava/io/IOException;
    const-string v3, "ZoomView"

    const-string v4, "Failed to instantiate region decoder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 129
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "is":Ljava/io/InputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    .local v2, "b":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 131
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 133
    :cond_6
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    .local v7, "rotation":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/android/camera/ui/ZoomView;->access$200(Lcom/android/camera/ui/ZoomView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 135
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomView;->access$800(Lcom/android/camera/ui/ZoomView;Z)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomView;->access$902(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
