.class final Lcom/android/camera/PhotoModule$MetaDataCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$CameraMetaDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MetaDataCallback"
.end annotation


# static fields
.field private static final QCAMERA_METADATA_HDR:I = 0x3

.field private static final QCAMERA_METADATA_RTB:I = 0x5


# instance fields
.field private mLastMessage:I

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->mLastMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 1491
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MetaDataCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method

.method private byteToInt([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 1587
    const/4 v2, 0x0

    .line 1588
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 1589
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 1590
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method


# virtual methods
.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 1499
    new-array v1, v7, [I

    .line 1500
    .local v1, "metadata":[I
    array-length v3, p1

    const/16 v6, 0xc

    if-lt v3, v6, :cond_1

    .line 1501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    move-object v3, p1

    .line 1502
    check-cast v3, [B

    mul-int/lit8 v6, v0, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/camera/PhotoModule$MetaDataCallback;->byteToInt([BI)I

    move-result v3

    aput v3, v1, v0

    .line 1501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1505
    :cond_0
    aget v3, v1, v5

    if-ne v3, v7, :cond_3

    .line 1506
    aget v3, v1, v8

    if-ne v3, v4, :cond_2

    .line 1507
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    iput-boolean v4, v3, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 1508
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PhotoModule$MetaDataCallback$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$1;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1584
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 1516
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    iput-boolean v5, v3, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 1517
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PhotoModule$MetaDataCallback$2;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$2;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1524
    :cond_3
    aget v3, v1, v5

    const/4 v6, 0x5

    if-ne v3, v6, :cond_5

    .line 1526
    const-string v3, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCAMERA_METADATA_RTB msgtype ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    aget v3, v1, v8

    packed-switch v3, :pswitch_data_0

    .line 1547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message type ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v6, v1, v8

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1550
    .local v2, "tip":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    aget v3, v1, v8

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_3
    invoke-static {v6, v3}, Lcom/android/camera/PhotoModule;->access$7202(Lcom/android/camera/PhotoModule;Z)Z

    .line 1551
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PhotoModule$MetaDataCallback$3;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$3;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1529
    .end local v2    # "tip":Ljava/lang/String;
    :pswitch_0
    const-string v2, "Too far"

    .line 1530
    .restart local v2    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1532
    .end local v2    # "tip":Ljava/lang/String;
    :pswitch_1
    const-string v2, "Too near"

    .line 1533
    .restart local v2    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1535
    .end local v2    # "tip":Ljava/lang/String;
    :pswitch_2
    const-string v2, "Low light"

    .line 1536
    .restart local v2    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1538
    .end local v2    # "tip":Ljava/lang/String;
    :pswitch_3
    const-string v2, "Object not found"

    .line 1539
    .restart local v2    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1541
    .end local v2    # "tip":Ljava/lang/String;
    :pswitch_4
    const-string v2, "Depth effect success"

    .line 1542
    .restart local v2    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1544
    .end local v2    # "tip":Ljava/lang/String;
    :pswitch_5
    const-string v2, "NO depth effect"

    .line 1545
    .restart local v2    # "tip":Ljava/lang/String;
    goto :goto_2

    :cond_4
    move v3, v5

    .line 1550
    goto :goto_3

    .line 1570
    .end local v2    # "tip":Ljava/lang/String;
    :cond_5
    aget v3, v1, v5

    const/16 v6, 0x65

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$7400(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1571
    const-string v3, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCameraMetaData, Lux id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Flash fired = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    aget v3, v1, v8

    if-ne v3, v4, :cond_6

    .line 1573
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$7502(Lcom/android/camera/PhotoModule;Z)Z

    .line 1574
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/MultiPPManager;->cancelFeature(I)Z

    .line 1575
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$7600(Lcom/android/camera/PhotoModule;)I

    move-result v4

    and-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$7602(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_1

    .line 1577
    :cond_6
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule;->access$7502(Lcom/android/camera/PhotoModule;Z)Z

    .line 1578
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1579
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    aget v4, v1, v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/PhotoModule;->access$7700(Lcom/android/camera/PhotoModule;II)V

    goto/16 :goto_1

    .line 1527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
