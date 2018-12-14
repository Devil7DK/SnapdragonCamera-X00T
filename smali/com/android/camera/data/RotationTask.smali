.class public Lcom/android/camera/data/RotationTask;
.super Landroid/os/AsyncTask;
.source "RotationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/data/LocalData;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/LocalData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_RotationTask"


# instance fields
.field private final mAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field private final mClockwise:Z

.field private final mContext:Landroid/content/Context;

.field private final mCurrentDataId:I

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/camera/data/RotationTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 51
    iput p3, p0, Lcom/android/camera/data/RotationTask;->mCurrentDataId:I

    .line 52
    iput-boolean p4, p0, Lcom/android/camera/data/RotationTask;->mClockwise:Z

    .line 53
    return-void
.end method

.method private rotateInJpegExif(Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;
    .locals 33
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 79
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/camera/data/LocalMediaData$PhotoData;

    if-nez v4, :cond_1

    .line 80
    const-string v4, "CAM_RotationTask"

    const-string v5, "Rotation can only happen on PhotoData."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v3, 0x0

    .line 142
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v27, p1

    .line 84
    check-cast v27, Lcom/android/camera/data/LocalMediaData$PhotoData;

    .line 85
    .local v27, "imageData":Lcom/android/camera/data/LocalMediaData$PhotoData;
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getOrientation()I

    move-result v29

    .line 87
    .local v29, "originRotation":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/data/RotationTask;->mClockwise:Z

    if-eqz v4, :cond_4

    .line 88
    add-int/lit8 v4, v29, 0x5a

    rem-int/lit16 v0, v4, 0x168

    move/from16 v26, v0

    .line 93
    .local v26, "finalRotationDegrees":I
    :goto_1
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 94
    .local v23, "filePath":Ljava/lang/String;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v32, "values":Landroid/content/ContentValues;
    const/16 v30, 0x0

    .line 96
    .local v30, "success":Z
    const/4 v13, 0x0

    .line 97
    .local v13, "newOrientation":I
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    new-instance v22, Lcom/android/camera/exif/ExifInterface;

    invoke-direct/range {v22 .. v22}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 99
    .local v22, "exifInterface":Lcom/android/camera/exif/ExifInterface;
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 101
    invoke-static/range {v26 .. v26}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 99
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v31

    .line 103
    .local v31, "tag":Lcom/android/camera/exif/ExifTag;
    if-eqz v31, :cond_5

    .line 104
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 107
    :try_start_0
    invoke-virtual/range {v22 .. v23}, Lcom/android/camera/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V

    .line 108
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v24

    .line 109
    .local v24, "fileSize":J
    const-string v4, "_size"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    move/from16 v13, v26

    .line 111
    const/16 v30, 0x1

    .line 122
    .end local v22    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v24    # "fileSize":J
    .end local v31    # "tag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 123
    .local v3, "result":Lcom/android/camera/data/LocalMediaData$PhotoData;
    if-eqz v30, :cond_0

    .line 125
    const-string v4, "orientation"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v28

    .line 129
    .local v28, "latLong":[D
    const-wide/16 v18, 0x0

    .line 130
    .local v18, "latitude":D
    const-wide/16 v20, 0x0

    .line 131
    .local v20, "longitude":D
    if-eqz v28, :cond_3

    .line 132
    const/4 v4, 0x0

    aget-wide v18, v28, v4

    .line 133
    const/4 v4, 0x1

    aget-wide v20, v28, v4

    .line 136
    :cond_3
    new-instance v3, Lcom/android/camera/data/LocalMediaData$PhotoData;

    .end local v3    # "result":Lcom/android/camera/data/LocalMediaData$PhotoData;
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getContentId()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getDateTaken()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getDateModified()J

    move-result-wide v10

    .line 138
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getWidth()I

    move-result v14

    .line 139
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getHeight()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getSizeInBytes()J

    move-result-wide v16

    invoke-direct/range {v3 .. v21}, Lcom/android/camera/data/LocalMediaData$PhotoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V

    .restart local v3    # "result":Lcom/android/camera/data/LocalMediaData$PhotoData;
    goto/16 :goto_0

    .line 90
    .end local v3    # "result":Lcom/android/camera/data/LocalMediaData$PhotoData;
    .end local v13    # "newOrientation":I
    .end local v18    # "latitude":D
    .end local v20    # "longitude":D
    .end local v23    # "filePath":Ljava/lang/String;
    .end local v26    # "finalRotationDegrees":I
    .end local v28    # "latLong":[D
    .end local v30    # "success":Z
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_4
    move/from16 v0, v29

    add-int/lit16 v4, v0, 0x10e

    rem-int/lit16 v0, v4, 0x168

    move/from16 v26, v0

    .restart local v26    # "finalRotationDegrees":I
    goto/16 :goto_1

    .line 112
    .restart local v13    # "newOrientation":I
    .restart local v22    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .restart local v23    # "filePath":Ljava/lang/String;
    .restart local v30    # "success":Z
    .restart local v31    # "tag":Lcom/android/camera/exif/ExifTag;
    .restart local v32    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "CAM_RotationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find file to set exif: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 114
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "CAM_RotationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot set exif data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    const-string v4, "CAM_RotationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot build tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;
    .locals 1
    .param p1, "data"    # [Lcom/android/camera/data/LocalData;

    .prologue
    .line 68
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/RotationTask;->rotateInJpegExif(Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Lcom/android/camera/data/LocalData;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/RotationTask;->doInBackground([Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "result"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/data/RotationTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iget v1, p0, Lcom/android/camera/data/RotationTask;->mCurrentDataId:I

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/LocalDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/android/camera/data/LocalData;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/RotationTask;->onPostExecute(Lcom/android/camera/data/LocalData;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 58
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    .line 59
    iget-boolean v1, p0, Lcom/android/camera/data/RotationTask;->mClockwise:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0e0313

    .line 60
    .local v0, "titleStringId":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0334

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 64
    return-void

    .line 59
    .end local v0    # "titleStringId":I
    :cond_0
    const v0, 0x7f0e0312

    goto :goto_0
.end method
