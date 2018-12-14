.class public Lcom/android/camera/ExtendedFace;
.super Ljava/lang/Object;
.source "ExtendedFace.java"


# instance fields
.field private mBlinkDetected:I

.field private mGazeAngle:I

.field private mGazeDirection:I

.field private mId:I

.field private mLeftrightGaze:I

.field private mLeyeBlink:I

.field private mReyeBlink:I

.field private mRollDirection:I

.field private mSmileConfidence:I

.field private mSmileDegree:I

.field private mTopbottomGaze:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mSmileDegree:I

    .line 36
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mSmileConfidence:I

    .line 37
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mBlinkDetected:I

    .line 38
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mLeyeBlink:I

    .line 39
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mReyeBlink:I

    .line 40
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mGazeAngle:I

    .line 41
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mLeftrightGaze:I

    .line 42
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mTopbottomGaze:I

    .line 43
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mGazeDirection:I

    .line 44
    iput v0, p0, Lcom/android/camera/ExtendedFace;->mRollDirection:I

    .line 48
    iput p1, p0, Lcom/android/camera/ExtendedFace;->mId:I

    .line 49
    return-void
.end method


# virtual methods
.method public getBlinkDetected()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mBlinkDetected:I

    return v0
.end method

.method public getGazeDirection()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mGazeDirection:I

    return v0
.end method

.method public getLeftrightGaze()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mLeftrightGaze:I

    return v0
.end method

.method public getLeyeBlink()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mLeyeBlink:I

    return v0
.end method

.method public getReyeBlink()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mReyeBlink:I

    return v0
.end method

.method public getRollDirection()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mRollDirection:I

    return v0
.end method

.method public getSmileConfidence()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mSmileConfidence:I

    return v0
.end method

.method public getSmileDegree()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mSmileDegree:I

    return v0
.end method

.method public getTopbottomGaze()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/camera/ExtendedFace;->mTopbottomGaze:I

    return v0
.end method

.method public setBlinkDegree(BB)V
    .locals 0
    .param p1, "left"    # B
    .param p2, "right"    # B

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/ExtendedFace;->mLeyeBlink:I

    .line 93
    iput p2, p0, Lcom/android/camera/ExtendedFace;->mReyeBlink:I

    .line 94
    return-void
.end method

.method public setBlinkDetected(I)V
    .locals 0
    .param p1, "blinkDetected"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/camera/ExtendedFace;->mBlinkDetected:I

    .line 89
    return-void
.end method

.method public setGazeAngle(B)V
    .locals 0
    .param p1, "gazeAngle"    # B

    .prologue
    .line 107
    iput p1, p0, Lcom/android/camera/ExtendedFace;->mGazeAngle:I

    .line 108
    return-void
.end method

.method public setGazeDirection(III)V
    .locals 0
    .param p1, "topbottomGaze"    # I
    .param p2, "leftrightGaze"    # I
    .param p3, "rollDirection"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/android/camera/ExtendedFace;->mTopbottomGaze:I

    .line 102
    iput p2, p0, Lcom/android/camera/ExtendedFace;->mLeftrightGaze:I

    .line 103
    iput p3, p0, Lcom/android/camera/ExtendedFace;->mRollDirection:I

    .line 104
    return-void
.end method

.method public setSmileConfidence(I)V
    .locals 0
    .param p1, "smileConfidence"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/camera/ExtendedFace;->mSmileConfidence:I

    .line 112
    return-void
.end method

.method public setSmileDegree(B)V
    .locals 0
    .param p1, "smileDegree"    # B

    .prologue
    .line 97
    iput p1, p0, Lcom/android/camera/ExtendedFace;->mSmileDegree:I

    .line 98
    return-void
.end method
