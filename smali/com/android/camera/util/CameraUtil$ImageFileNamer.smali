.class Lcom/android/camera/util/CameraUtil$ImageFileNamer;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private final REFOCUS_ALLFOCUS_IDX:I

.field private final REFOCUS_ALLFOCUS_SUFFIX:Ljava/lang/String;

.field private final REFOCUS_DEPTHMAP_IDX:I

.field private final REFOCUS_DEPTHMAP_SUFFIX:Ljava/lang/String;

.field private final mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mRefocusIdx:I

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_DEPTHMAP_IDX:I

    .line 1055
    const-string v0, "DepthMap"

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_DEPTHMAP_SUFFIX:Ljava/lang/String;

    .line 1056
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_ALLFOCUS_IDX:I

    .line 1057
    const-string v0, "Allfocus"

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_ALLFOCUS_SUFFIX:Ljava/lang/String;

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    .line 1067
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 1068
    return-void
.end method


# virtual methods
.method public generateName(JZ)Ljava/lang/String;
    .locals 11
    .param p1, "dateTaken"    # J
    .param p3, "refocus"    # Z

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 1071
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1072
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "result":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 1075
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1076
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_DepthMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    .line 1097
    :goto_0
    return-object v1

    .line 1078
    :cond_0
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Allfocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    iput v6, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    goto :goto_0

    .line 1082
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    goto :goto_0

    .line 1088
    :cond_2
    div-long v2, p1, v8

    iget-wide v4, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    div-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1089
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1092
    :cond_3
    iput-wide p1, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    .line 1093
    iput v6, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
