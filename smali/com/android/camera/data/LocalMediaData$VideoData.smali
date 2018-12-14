.class public final Lcom/android/camera/data/LocalMediaData$VideoData;
.super Lcom/android/camera/data/LocalMediaData;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;
    }
.end annotation


# static fields
.field public static final COL_DATA:I = 0x5

.field public static final COL_DATE_MODIFIED:I = 0x4

.field public static final COL_DATE_TAKEN:I = 0x3

.field public static final COL_DURATION:I = 0xc

.field public static final COL_HEIGHT:I = 0x7

.field public static final COL_ID:I = 0x0

.field public static final COL_LATITUDE:I = 0xa

.field public static final COL_LONGITUDE:I = 0xb

.field public static final COL_MIME_TYPE:I = 0x2

.field public static final COL_RESOLUTION:I = 0x8

.field public static final COL_SIZE:I = 0x9

.field public static final COL_TITLE:I = 0x1

.field public static final COL_WIDTH:I = 0x6

.field static final CONTENT_URI:Landroid/net/Uri;

.field static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final mSupportedDataActions:I = 0x3

.field private static final mSupportedUIActions:I = 0x3


# instance fields
.field private mDurationInSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 589
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    .line 603
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "dateTakenInSeconds"    # J
    .param p7, "dateModifiedInSeconds"    # J
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "sizeInBytes"    # J
    .param p14, "latitude"    # D
    .param p16, "longitude"    # D
    .param p18, "durationInSeconds"    # J

    .prologue
    .line 626
    invoke-direct/range {p0 .. p17}, Lcom/android/camera/data/LocalMediaData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    .line 628
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mDurationInSeconds:J

    .line 629
    return-void
.end method

.method static buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$VideoData;
    .locals 32
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 632
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 633
    .local v3, "id":J
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "title":Ljava/lang/String;
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 635
    .local v6, "mimeType":Ljava/lang/String;
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 636
    .local v7, "dateTakenInSeconds":J
    const/16 v28, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 637
    .local v9, "dateModifiedInSeconds":J
    const/16 v28, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 638
    .local v11, "path":Ljava/lang/String;
    const/16 v28, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 639
    .local v12, "width":I
    const/16 v28, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 640
    .local v13, "height":I
    new-instance v25, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 641
    .local v25, "retriever":Landroid/media/MediaMetadataRetriever;
    const/16 v26, 0x0

    .line 643
    .local v26, "rotation":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v24, "origFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-gtz v28, :cond_1

    .line 645
    :cond_0
    const-string v28, "CAM_LocalData"

    const-string v29, "Invalid video file"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 647
    const/4 v2, 0x0

    .line 692
    :goto_0
    return-object v2

    .line 651
    :cond_1
    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    const/16 v28, 0x18

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v26

    .line 664
    if-eqz v12, :cond_2

    if-nez v13, :cond_3

    .line 665
    :cond_2
    const/16 v28, 0x12

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v27

    .line 667
    .local v27, "val":Ljava/lang/String;
    if-nez v27, :cond_5

    const/4 v12, 0x0

    .line 668
    :goto_1
    const/16 v28, 0x13

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v27

    .line 670
    if-nez v27, :cond_6

    const/4 v13, 0x0

    .line 672
    .end local v27    # "val":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 673
    if-eqz v12, :cond_4

    if-nez v13, :cond_7

    .line 675
    :cond_4
    const-string v28, "CAM_LocalData"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unable to retrieve dimension of video:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v2, 0x0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v23

    .line 655
    .local v23, "ex":Ljava/lang/RuntimeException;
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 656
    const-string v28, "CAM_LocalData"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 657
    invoke-virtual/range {v23 .. v23}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 656
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v2, 0x0

    goto :goto_0

    .line 667
    .end local v23    # "ex":Ljava/lang/RuntimeException;
    .restart local v27    # "val":Ljava/lang/String;
    :cond_5
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 670
    :cond_6
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_2

    .line 678
    .end local v27    # "val":Ljava/lang/String;
    :cond_7
    if-eqz v26, :cond_9

    const-string v28, "90"

    .line 679
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8

    const-string v28, "270"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 680
    :cond_8
    move/from16 v22, v12

    .line 681
    .local v22, "b":I
    move v12, v13

    .line 682
    move/from16 v13, v22

    .line 685
    .end local v22    # "b":I
    :cond_9
    const/16 v28, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 686
    .local v14, "sizeInBytes":J
    const/16 v28, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 687
    .local v16, "latitude":D
    const/16 v28, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 688
    .local v18, "longitude":D
    const/16 v28, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v20, v28, v30

    .line 689
    .local v20, "durationInSeconds":J
    new-instance v2, Lcom/android/camera/data/LocalMediaData$VideoData;

    invoke-direct/range {v2 .. v21}, Lcom/android/camera/data/LocalMediaData$VideoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V

    .line 692
    .local v2, "d":Lcom/android/camera/data/LocalMediaData$VideoData;
    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 719
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mContentId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 720
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->delete(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 725
    sget-object v0, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    .line 726
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mContentId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getLocalDataType()I
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x4

    return v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 731
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;

    move-result-object v1

    .line 732
    .local v1, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mDurationInSeconds:J

    invoke-static {p1, v2, v3}, Lcom/android/camera/data/MediaDetails;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "duration":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 734
    return-object v1
.end method

.method public getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "placeHolder"    # Landroid/graphics/drawable/Drawable;
    .param p5, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .prologue
    .line 760
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 761
    .local v2, "iv":Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 764
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/LocalMediaData$VideoData;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/widget/ImageView;

    .line 768
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 769
    .local v8, "icon":Landroid/widget/ImageView;
    const v0, 0x7f020050

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 770
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 771
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    new-instance v0, Lcom/android/camera/data/LocalMediaData$VideoData$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/data/LocalMediaData$VideoData$1;-><init>(Lcom/android/camera/data/LocalMediaData$VideoData;Landroid/app/Activity;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 782
    .local v7, "f":Landroid/widget/FrameLayout;
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 783
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 784
    return-object v7
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x2

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 713
    and-int/lit8 v0, p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoto()Z
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public isUIActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 708
    and-int/lit8 v0, p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 744
    .line 745
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$VideoData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 744
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 746
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v7, v3

    .line 751
    :goto_0
    return-object v7

    .line 749
    :cond_1
    invoke-static {v6}, Lcom/android/camera/data/LocalMediaData$VideoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$VideoData;

    move-result-object v7

    .line 750
    .local v7, "newData":Lcom/android/camera/data/LocalMediaData$VideoData;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .prologue
    .line 836
    const-string v0, "CAM_LocalData"

    const-string v1, "Unexpected call in rotate90Degrees()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mDateTakenInSeconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
