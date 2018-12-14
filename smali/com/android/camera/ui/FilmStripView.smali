.class public Lcom/android/camera/ui/FilmStripView;
.super Landroid/view/ViewGroup;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;,
        Lcom/android/camera/ui/FilmStripView$MyScroller;,
        Lcom/android/camera/ui/FilmStripView$MyController;,
        Lcom/android/camera/ui/FilmStripView$ViewItem;,
        Lcom/android/camera/ui/FilmStripView$Controller;,
        Lcom/android/camera/ui/FilmStripView$Listener;,
        Lcom/android/camera/ui/FilmStripView$DataAdapter;,
        Lcom/android/camera/ui/FilmStripView$ImageData;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x5

.field private static final CAMERA_PREVIEW_SWIPE_THRESHOLD:I = 0x12c

.field private static final DECELERATION_FACTOR:I = 0x4

.field private static final FILM_STRIP_SCALE:F = 0.5f

.field private static final FLING_COASTING_DURATION_S:F = 0.05f

.field private static final FULL_SCREEN_SCALE:F = 1.0f

.field private static final GEOMETRY_ADJUST_TIME_MS:I = 0x190

.field private static final SNAP_IN_CENTER_TIME_MS:I = 0x258

.field private static final SWIPE_TIME_OUT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "CAM_FilmStripView"

.field private static final TOLERANCE:F = 0.1f

.field private static final ZOOM_ANIMATION_DURATION_MS:I = 0xc8


# instance fields
.field private initialClampX:Z

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBottomControls:Lcom/android/camera/ui/FilmstripBottomControls;

.field private mCameraView:Landroid/view/View;

.field private mCenterX:I

.field private mCheckToIntercept:Z

.field private mController:Lcom/android/camera/ui/FilmStripView$MyController;

.field private final mCurrentItem:I

.field private mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

.field private mDataIdOnUserScrolling:I

.field private mDown:Landroid/view/MotionEvent;

.field private final mDrawArea:Landroid/graphics/Rect;

.field private mGestureRecognizer:Lcom/android/camera/ui/FilmStripGestureRecognizer;

.field private mIsLoaded:Z

.field private mIsUserScrolling:Z

.field private mLastItemId:J

.field private mLastTotalNumber:I

.field private mListener:Lcom/android/camera/ui/FilmStripView$Listener;

.field private mOverScaleFactor:F

.field private mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

.field private mPreviewGestures:Lcom/android/camera/PreviewGestures;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReset:Z

.field private mScale:F

.field private mSendToMenu:Z

.field private mSendToPreviewMenu:Z

.field private mSlop:I

.field private mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private mViewGap:I

.field private mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

.field private mViewItemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mZoomView:Lcom/android/camera/ui/ZoomView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 675
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mCurrentItem:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/ui/FilmStripView$ViewItem;

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FilmStripView;->mCheckToIntercept:Z

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/FilmStripView;->mLastItemId:J

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mOverScaleFactor:F

    .line 103
    iput v2, p0, Lcom/android/camera/ui/FilmStripView;->mLastTotalNumber:I

    .line 109
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mIsLoaded:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->initialClampX:Z

    .line 676
    check-cast p1, Lcom/android/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->init(Lcom/android/camera/CameraActivity;)V

    .line 677
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 681
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mCurrentItem:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/ui/FilmStripView$ViewItem;

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FilmStripView;->mCheckToIntercept:Z

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/FilmStripView;->mLastItemId:J

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mOverScaleFactor:F

    .line 103
    iput v2, p0, Lcom/android/camera/ui/FilmStripView;->mLastTotalNumber:I

    .line 109
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mIsLoaded:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->initialClampX:Z

    .line 682
    check-cast p1, Lcom/android/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->init(Lcom/android/camera/CameraActivity;)V

    .line 683
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 687
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mCurrentItem:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/ui/FilmStripView$ViewItem;

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FilmStripView;->mCheckToIntercept:Z

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/FilmStripView;->mLastItemId:J

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mOverScaleFactor:F

    .line 103
    iput v2, p0, Lcom/android/camera/ui/FilmStripView;->mLastTotalNumber:I

    .line 109
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mIsLoaded:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->initialClampX:Z

    .line 688
    check-cast p1, Lcom/android/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->init(Lcom/android/camera/CameraActivity;)V

    .line 689
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->reload()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->update(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/FilmStripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->updateInsertion(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/FilmStripView;ILcom/android/camera/ui/FilmStripView$ImageData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/camera/ui/FilmStripView$ImageData;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FilmStripView;->animateItemRemoval(ILcom/android/camera/ui/FilmStripView$ImageData;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/FilmStripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/ui/FilmStripView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/FilmStripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->clampCenterX()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/FilmStripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->checkCurrentDataCentered(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmstripBottomControls;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mBottomControls:Lcom/android/camera/ui/FilmstripBottomControls;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->snapInCenter()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/FilmStripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentViewType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/FilmStripView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/FilmStripView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/FilmStripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewGap:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/ZoomView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/FilmStripView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ui/FilmStripView;->mOverScaleFactor:F

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->resetZoomView()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/ui/FilmStripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/ui/FilmStripView;->mIsUserScrolling:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/ui/FilmStripView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ui/FilmStripView;->mIsUserScrolling:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/camera/ui/FilmStripView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FilmStripView;->demoteData(II)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/ui/FilmStripView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FilmStripView;->promoteData(II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/ui/FilmStripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataIdOnUserScrolling:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/camera/ui/FilmStripView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ui/FilmStripView;->mDataIdOnUserScrolling:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->hideZoomView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$ImageData;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # Lcom/android/camera/ui/FilmStripView$ImageData;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FilmStripView;->checkForRemoval(Lcom/android/camera/ui/FilmStripView$ImageData;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/FilmStripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/ui/FilmStripView;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/FilmStripView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ui/FilmStripView;->mIsLoaded:Z

    return p1
.end method

.method private adjustChildZOrder()V
    .locals 2

    .prologue
    .line 1044
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1045
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 1044
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FilmStripView;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    .line 1050
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FilmStripView;->bringChildToFront(Landroid/view/View;)V

    .line 1051
    return-void
.end method

.method private animateItemRemoval(ILcom/android/camera/ui/FilmStripView$ImageData;)V
    .locals 16
    .param p1, "dataID"    # I
    .param p2, "data"    # Lcom/android/camera/ui/FilmStripView$ImageData;

    .prologue
    .line 1507
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/ui/FilmStripView;->findItemByDataID(I)I

    move-result v10

    .line 1510
    .local v10, "removedItem":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v13, 0x5

    if-ge v5, v13, :cond_2

    .line 1511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v13

    move/from16 v0, p1

    if-gt v13, v0, :cond_1

    .line 1510
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1514
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setId(I)V

    goto :goto_1

    .line 1516
    :cond_2
    const/4 v13, -0x1

    if-ne v10, v13, :cond_3

    .line 1643
    :goto_2
    return-void

    .line 1520
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v11

    .line 1521
    .local v11, "removedView":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewGap:I

    add-int v8, v13, v14

    .line 1523
    .local v8, "offsetX":I
    add-int/lit8 v5, v10, 0x1

    :goto_3
    const/4 v13, 0x5

    if-ge v5, v13, :cond_5

    .line 1524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_4

    .line 1525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual {v13, v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setLeftPosition(I)V

    .line 1523
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1529
    :cond_5
    const/4 v13, 0x2

    if-lt v10, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v10

    .line 1530
    invoke-virtual {v13}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v14}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v14

    if-ge v13, v14, :cond_c

    .line 1534
    move v5, v10

    :goto_4
    const/4 v13, 0x4

    if-ge v5, v13, :cond_6

    .line 1535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aput-object v14, v13, v5

    .line 1534
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1539
    :cond_6
    const/4 v3, 0x4

    .line 1540
    .local v3, "curr":I
    add-int/lit8 v9, v3, -0x1

    .line 1541
    .local v9, "prev":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v9

    if-eqz v13, :cond_7

    .line 1542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v14

    aput-object v14, v13, v3

    .line 1546
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1547
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v14, 0x3

    aget-object v7, v13, v14

    .line 1549
    .local v7, "nextItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v7, :cond_8

    .line 1550
    invoke-virtual {v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    .end local v7    # "nextItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_8
    move v5, v10

    :goto_5
    const/4 v13, 0x5

    if-ge v5, v13, :cond_a

    .line 1556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_9

    .line 1557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    int-to-float v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    .line 1555
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1563
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v14, 0x2

    aget-object v4, v13, v14

    .line 1564
    .local v4, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v14}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 1565
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v14

    if-le v13, v14, :cond_10

    .line 1566
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    sub-int v2, v13, v14

    .line 1567
    .local v2, "adjustDiff":I
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 1568
    const/4 v5, 0x0

    :goto_6
    const/4 v13, 0x5

    if-ge v5, v13, :cond_10

    .line 1569
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_b

    .line 1570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->translateXBy(FF)V

    .line 1568
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1576
    .end local v2    # "adjustDiff":I
    .end local v3    # "curr":I
    .end local v4    # "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .end local v9    # "prev":I
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    sub-int/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 1578
    move v5, v10

    :goto_7
    if-lez v5, :cond_d

    .line 1579
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v15, v5, -0x1

    aget-object v14, v14, v15

    aput-object v14, v13, v5

    .line 1578
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 1583
    :cond_d
    const/4 v3, 0x0

    .line 1584
    .restart local v3    # "curr":I
    add-int/lit8 v6, v3, 0x1

    .line 1585
    .local v6, "next":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v6

    if-eqz v13, :cond_e

    .line 1586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v14

    aput-object v14, v13, v3

    .line 1590
    :cond_e
    move v5, v10

    :goto_8
    if-ltz v5, :cond_10

    .line 1591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_f

    .line 1592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    neg-int v14, v8

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    .line 1590
    :cond_f
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 1598
    .end local v6    # "next":I
    :cond_10
    const/4 v5, 0x0

    :goto_9
    const/4 v13, 0x5

    if-ge v5, v13, :cond_12

    .line 1599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    .line 1600
    invoke-virtual {v13, v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getScaledTranslationX(F)F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_11

    .line 1601
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v13, v13, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/ui/FilmStripView;->slideViewBack(Lcom/android/camera/ui/FilmStripView$ViewItem;)V

    .line 1598
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1604
    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v14

    if-ne v13, v14, :cond_13

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentViewType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 1607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v13}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    .line 1610
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->getHeight()I

    move-result v13

    div-int/lit8 v12, v13, 0x8

    .line 1611
    .local v12, "transY":I
    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v13

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_14

    .line 1612
    neg-int v12, v12

    .line 1614
    :cond_14
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v14, 0x0

    .line 1615
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    int-to-float v14, v12

    .line 1616
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 1617
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0x190

    .line 1618
    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v14, Lcom/android/camera/ui/FilmStripView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1, v11}, Lcom/android/camera/ui/FilmStripView$3;-><init>(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$ImageData;Landroid/view/View;)V

    .line 1619
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 1640
    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1641
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->adjustChildZOrder()V

    .line 1642
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    goto/16 :goto_2
.end method

.method private buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;
    .locals 6
    .param p1, "dataID"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 898
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v3, p1}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v0

    .line 899
    .local v0, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-object v1

    .line 902
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$ImageData;->prepare()V

    .line 903
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-interface {v3, v4, p1}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    .line 904
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 907
    new-instance v1, Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/ui/FilmStripView$ViewItem;-><init>(ILandroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 908
    .local v1, "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v2

    .line 909
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mCameraView:Landroid/view/View;

    if-eq v2, v3, :cond_2

    .line 910
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FilmStripView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 912
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 913
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 914
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 915
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private calculateChildDimension(IIIII)[I
    .locals 6
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "imageOrientation"    # I
    .param p4, "boundWidth"    # I
    .param p5, "boundHeight"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 783
    const/16 v2, 0x5a

    if-eq p3, v2, :cond_0

    const/16 v2, 0x10e

    if-ne p3, v2, :cond_1

    .line 785
    :cond_0
    move v1, p1

    .line 786
    .local v1, "savedWidth":I
    move p1, p2

    .line 787
    move p2, v1

    .line 789
    .end local v1    # "savedWidth":I
    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p2, v3, :cond_3

    .line 791
    :cond_2
    move p1, p4

    .line 792
    move p2, p5

    .line 795
    :cond_3
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 796
    .local v0, "ret":[I
    aput p4, v0, v4

    .line 797
    aput p5, v0, v5

    .line 799
    aget v2, v0, v5

    mul-int/2addr v2, p1

    aget v3, v0, v4

    mul-int/2addr v3, p2

    if-le v2, v3, :cond_4

    .line 800
    aget v2, v0, v4

    mul-int/2addr v2, p2

    div-int/2addr v2, p1

    aput v2, v0, v5

    .line 805
    :goto_0
    return-object v0

    .line 802
    :cond_4
    aget v2, v0, v5

    mul-int/2addr v2, p1

    div-int/2addr v2, p2

    aput v2, v0, v4

    goto :goto_0
.end method

.method private checkCurrentDataCentered(I)V
    .locals 1
    .param p1, "dataID"    # I

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->isDataAtCenter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FilmStripView$Listener;->onCurrentDataCentered(I)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FilmStripView$Listener;->onCurrentDataOffCentered(I)V

    goto :goto_0
.end method

.method private checkForRemoval(Lcom/android/camera/ui/FilmStripView$ImageData;Landroid/view/View;)V
    .locals 2
    .param p1, "data"    # Lcom/android/camera/ui/FilmStripView$ImageData;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1484
    invoke-interface {p1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1485
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 1486
    invoke-interface {p1}, Lcom/android/camera/ui/FilmStripView$ImageData;->recycle()V

    .line 1494
    :goto_0
    return-void

    .line 1488
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mCameraView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mCameraView:Landroid/view/View;

    if-eq v0, p2, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mCameraView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 1492
    :cond_1
    iput-object p2, p0, Lcom/android/camera/ui/FilmStripView;->mCameraView:Landroid/view/View;

    goto :goto_0
.end method

.method private clampCenterX()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 996
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v3, 0x2

    aget-object v0, v2, v3

    .line 997
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v0, :cond_1

    .line 998
    const/4 v1, 0x0

    .line 1019
    :cond_0
    :goto_0
    return v1

    .line 1001
    :cond_1
    const/4 v1, 0x0

    .line 1002
    .local v1, "stopScroll":Z
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v3

    if-lt v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->initialClampX:Z

    if-eqz v2, :cond_5

    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mDataIdOnUserScrolling:I

    if-gt v2, v4, :cond_5

    .line 1005
    const/4 v1, 0x1

    .line 1009
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 1010
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 1012
    const/4 v1, 0x1

    .line 1015
    :cond_4
    if-eqz v1, :cond_0

    .line 1016
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    goto :goto_0

    .line 1006
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mDataIdOnUserScrolling:I

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    .line 1007
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$MyController;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private demoteData(II)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "dataID"    # I

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v0, p2}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataDemoted(I)V

    .line 2103
    :cond_0
    return-void
.end method

.method private fadeAndScaleRightViewItem(I)V
    .locals 10
    .param p1, "currItem"    # I

    .prologue
    const/4 v9, 0x4

    const/high16 v8, 0x3f000000    # 0.5f

    .line 1237
    const/4 v6, 0x1

    if-lt p1, v6, :cond_0

    const/4 v6, 0x5

    if-le p1, v6, :cond_1

    .line 1238
    :cond_0
    const-string v6, "CAM_FilmStripView"

    const-string v7, "currItem id out of bound."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v6, p1

    .line 1243
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v7, p1, -0x1

    aget-object v4, v6, v7

    .line 1244
    .local v4, "prev":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v0, :cond_2

    if-nez v4, :cond_3

    .line 1245
    :cond_2
    const-string v6, "CAM_FilmStripView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid view item (curr or prev == null). curr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1250
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v2

    .line 1251
    .local v2, "currView":Landroid/view/View;
    const/4 v6, 0x3

    if-le p1, v6, :cond_4

    .line 1253
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1256
    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v5

    .line 1257
    .local v5, "prevCenterX":I
    iget v6, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    if-gt v6, v5, :cond_5

    .line 1260
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1263
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    .line 1264
    .local v1, "currCenterX":I
    iget v6, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    int-to-float v6, v6

    int-to-float v7, v5

    sub-float/2addr v6, v7

    sub-int v7, v1, v5

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 1266
    .local v3, "fadeDownFraction":F
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    mul-float v7, v8, v3

    add-float/2addr v7, v8

    invoke-virtual {v0, v6, v1, v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->layoutIn(Landroid/graphics/Rect;IF)V

    .line 1268
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1269
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1270
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private findItemByDataID(I)I
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    .line 1647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1648
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v0

    .line 1649
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1653
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1647
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1653
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findTheNearestView(I)I
    .locals 8
    .param p1, "pointX"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v5, -0x1

    .line 869
    const/4 v4, 0x0

    .line 871
    .local v4, "nearest":I
    :goto_0
    if-ge v4, v7, :cond_1

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v4

    .line 872
    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 873
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 876
    :cond_1
    if-ne v4, v7, :cond_2

    .line 894
    :goto_1
    return v5

    .line 880
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 882
    .local v3, "min":I
    add-int/lit8 v2, v4, 0x1

    .local v2, "itemID":I
    :goto_2
    if-ge v2, v7, :cond_5

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v2

    if-eqz v6, :cond_5

    .line 884
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 882
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 887
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v0

    .line 888
    .local v0, "c":I
    sub-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 889
    .local v1, "dist":I
    if-ge v1, v3, :cond_3

    .line 890
    move v3, v1

    .line 891
    move v4, v2

    goto :goto_3

    .end local v0    # "c":I
    .end local v1    # "dist":I
    :cond_5
    move v5, v4

    .line 894
    goto :goto_1
.end method

.method private getCurrentViewType()I
    .locals 3

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 773
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v0, :cond_0

    .line 774
    const/4 v1, 0x0

    .line 776
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->getViewType()I

    move-result v1

    goto :goto_0
.end method

.method private hideZoomView()V
    .locals 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->access$500(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 1477
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 1479
    :cond_0
    return-void
.end method

.method private init(Lcom/android/camera/CameraActivity;)V
    .locals 5
    .param p1, "cameraActivity"    # Lcom/android/camera/CameraActivity;

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 692
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FilmStripView;->setWillNotDraw(Z)V

    .line 693
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    .line 694
    iput v4, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    .line 695
    iput v1, p0, Lcom/android/camera/ui/FilmStripView;->mDataIdOnUserScrolling:I

    .line 696
    new-instance v1, Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/FilmStripView$MyController;-><init>(Lcom/android/camera/ui/FilmStripView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    .line 697
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 698
    new-instance v1, Lcom/android/camera/ui/ZoomView;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/ZoomView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 699
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 700
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FilmStripView;->addView(Landroid/view/View;)V

    .line 702
    new-instance v1, Lcom/android/camera/ui/FilmStripGestureRecognizer;

    new-instance v2, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;-><init>(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$1;)V

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/FilmStripGestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;)V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mGestureRecognizer:Lcom/android/camera/ui/FilmStripGestureRecognizer;

    .line 704
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/FilmStripView;->mSlop:I

    .line 705
    new-instance v1, Lcom/android/camera/ui/FilmStripView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilmStripView$1;-><init>(Lcom/android/camera/ui/FilmStripView;)V

    iput-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 711
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 712
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 717
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FilmStripView;->mOverScaleFactor:F

    .line 718
    iget v1, p0, Lcom/android/camera/ui/FilmStripView;->mOverScaleFactor:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 719
    iput v4, p0, Lcom/android/camera/ui/FilmStripView;->mOverScaleFactor:F

    .line 721
    :cond_0
    return-void
.end method

.method private isDataAtCenter(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 761
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v0

    .line 764
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v2

    .line 765
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    if-ne v1, v2, :cond_0

    .line 766
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private layoutViewItems(Z)V
    .locals 18
    .param p1, "layoutChanged"    # Z

    .prologue
    .line 1274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    .line 1275
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    .line 1276
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-nez v14, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-object v16, v16, v17

    .line 1281
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    .line 1280
    invoke-virtual {v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setLeftPosition(I)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    div-float v15, v15, v16

    invoke-interface {v14, v15}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v13

    .line 1293
    .local v13, "scaleFraction":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mViewGap:I

    add-int v8, v14, v15

    .line 1298
    .local v8, "fullScreenWidth":I
    const/4 v10, 0x1

    .local v10, "itemID":I
    :goto_1
    if-ltz v10, :cond_2

    .line 1299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v2, v14, v10

    .line 1300
    .local v2, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v2, :cond_6

    .line 1310
    .end local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_2
    const/4 v10, 0x3

    :goto_2
    const/4 v14, 0x5

    if-ge v10, v14, :cond_3

    .line 1311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v2, v14, v10

    .line 1312
    .restart local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v2, :cond_7

    .line 1326
    .end local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    .line 1327
    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    const/4 v15, 0x0

    .line 1328
    invoke-interface {v14, v15}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/ui/FilmStripView$ImageData;->getViewType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v9, 0x1

    .line 1331
    .local v9, "immediateRight":Z
    :goto_3
    if-eqz v9, :cond_9

    .line 1336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v4, v14, v15

    .line 1337
    .local v4, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->layoutIn(Landroid/graphics/Rect;IF)V

    .line 1338
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v4, v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    .line 1339
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1379
    :goto_4
    const/4 v10, 0x1

    :goto_5
    if-ltz v10, :cond_4

    .line 1380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v2, v14, v10

    .line 1381
    .restart local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v2, :cond_e

    .line 1388
    .end local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_4
    const/4 v10, 0x3

    :goto_6
    const/4 v14, 0x5

    if-ge v10, v14, :cond_5

    .line 1389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v2, v14, v10

    .line 1390
    .restart local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v2, :cond_f

    .line 1424
    .end local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->stepIfNeeded()V

    .line 1425
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/ui/FilmStripView;->updateBottomControls(Z)V

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/camera/ui/FilmStripView;->mLastItemId:J

    goto/16 :goto_0

    .line 1305
    .end local v4    # "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .end local v9    # "immediateRight":Z
    .restart local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v15, v10, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v14

    .line 1306
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mViewGap:I

    sub-int v5, v14, v15

    .line 1307
    .local v5, "currLeft":I
    invoke-virtual {v2, v5}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setLeftPosition(I)V

    .line 1298
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 1317
    .end local v5    # "currLeft":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v15, v10, -0x1

    aget-object v11, v14, v15

    .line 1319
    .local v11, "prev":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v11}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v14

    invoke-virtual {v11}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mViewGap:I

    add-int v5, v14, v15

    .line 1321
    .restart local v5    # "currLeft":I
    invoke-virtual {v2, v5}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setLeftPosition(I)V

    .line 1310
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1328
    .end local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .end local v5    # "currLeft":I
    .end local v11    # "prev":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1340
    .restart local v9    # "immediateRight":Z
    :cond_9
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v13, v14

    if-nez v14, :cond_c

    .line 1341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v4, v14, v15

    .line 1342
    .restart local v4    # "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v3

    .line 1343
    .local v3, "currCenterX":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    if-ge v14, v3, :cond_a

    .line 1346
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/ui/FilmStripView;->fadeAndScaleRightViewItem(I)V

    goto/16 :goto_4

    .line 1347
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    if-le v14, v3, :cond_b

    .line 1350
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v13}, Lcom/android/camera/ui/FilmStripView;->translateLeftViewItem(IIF)V

    goto/16 :goto_4

    .line 1352
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->layoutIn(Landroid/graphics/Rect;IF)V

    .line 1353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v4, v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    .line 1354
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4

    .line 1357
    .end local v3    # "currCenterX":I
    .end local v4    # "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v4, v14, v15

    .line 1360
    .restart local v4    # "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    .line 1361
    invoke-virtual {v4, v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getScaledTranslationX(F)F

    move-result v14

    mul-float/2addr v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    .line 1360
    invoke-virtual {v4, v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->layoutIn(Landroid/graphics/Rect;IF)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    if-nez v14, :cond_d

    .line 1365
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4

    .line 1367
    :cond_d
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v3

    .line 1368
    .restart local v3    # "currCenterX":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v12

    .line 1369
    .local v12, "prevCenterX":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    int-to-float v14, v14

    int-to-float v15, v12

    sub-float/2addr v14, v15

    sub-int v15, v3, v12

    int-to-float v15, v15

    div-float v7, v14, v15

    .line 1371
    .local v7, "fadeDownFraction":F
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v7

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    mul-float v15, v15, v16

    add-float/2addr v15, v7

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4

    .line 1384
    .end local v3    # "currCenterX":I
    .end local v7    # "fadeDownFraction":F
    .end local v12    # "prevCenterX":I
    .restart local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v13}, Lcom/android/camera/ui/FilmStripView;->translateLeftViewItem(IIF)V

    .line 1379
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_5

    .line 1394
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->layoutIn(Landroid/graphics/Rect;IF)V

    .line 1395
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentViewType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    .line 1397
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1388
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 1401
    :cond_10
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v6

    .line 1402
    .local v6, "currView":Landroid/view/View;
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v13, v14

    if-nez v14, :cond_11

    .line 1404
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/camera/ui/FilmStripView;->fadeAndScaleRightViewItem(I)V

    goto :goto_7

    .line 1406
    :cond_11
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_12

    .line 1407
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    :cond_12
    const/4 v14, 0x3

    if-ne v10, v14, :cond_13

    .line 1410
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v13

    invoke-virtual {v6, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1418
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    .line 1419
    invoke-virtual {v14}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v14

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    .line 1418
    invoke-virtual {v2, v14, v15}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    goto :goto_7

    .line 1412
    :cond_13
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-nez v14, :cond_14

    .line 1413
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v6, v14}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 1415
    :cond_14
    const/4 v14, 0x4

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private measureViewItem(Lcom/android/camera/ui/FilmStripView$ViewItem;II)V
    .locals 10
    .param p1, "item"    # Lcom/android/camera/ui/FilmStripView$ViewItem;
    .param p2, "boundWidth"    # I
    .param p3, "boundHeight"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 809
    invoke-virtual {p1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v7

    .line 810
    .local v7, "id":I
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v0, v7}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v8

    .line 811
    .local v8, "imageData":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v8, :cond_0

    .line 812
    const-string v0, "CAM_FilmStripView"

    const-string v1, "trying to measure a null item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-interface {v8}, Lcom/android/camera/ui/FilmStripView$ImageData;->getWidth()I

    move-result v1

    invoke-interface {v8}, Lcom/android/camera/ui/FilmStripView$ImageData;->getHeight()I

    move-result v2

    .line 817
    invoke-interface {v8}, Lcom/android/camera/ui/FilmStripView$ImageData;->getOrientation()I

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 816
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView;->calculateChildDimension(IIIII)[I

    move-result-object v6

    .line 819
    .local v6, "dim":[I
    invoke-virtual {p1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v6, v1

    .line 820
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x1

    aget v2, v6, v2

    .line 822
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 819
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method private promoteData(II)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "dataID"    # I

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v0, p2}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataPromoted(I)V

    .line 2097
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v13, 0x2

    .line 2027
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v6, v8}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    .line 2028
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView$MyController;->access$1500(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2029
    iput v7, p0, Lcom/android/camera/ui/FilmStripView;->mDataIdOnUserScrolling:I

    .line 2033
    const/4 v4, 0x0

    .line 2035
    .local v4, "stayInPreview":Z
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v13

    if-eqz v6, :cond_0

    .line 2036
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v13

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v6

    if-nez v6, :cond_2

    move v4, v8

    .line 2037
    :goto_0
    if-nez v4, :cond_0

    .line 2038
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    iget-object v9, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v9, v9, v13

    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v9

    invoke-interface {v6, v9, v7}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFocusChanged(IZ)V

    .line 2043
    :cond_0
    iget-object v9, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    array-length v10, v9

    move v6, v7

    :goto_1
    if-ge v6, v10, :cond_4

    aget-object v3, v9, v6

    .line 2044
    .local v3, "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v3, :cond_1

    .line 2045
    iget-object v11, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v2

    .line 2046
    .local v2, "imageData":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-eqz v2, :cond_1

    .line 2047
    invoke-interface {v2}, Lcom/android/camera/ui/FilmStripView$ImageData;->recycle()V

    .line 2048
    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v5

    .line 2049
    .local v5, "v":Landroid/view/View;
    invoke-interface {v2}, Lcom/android/camera/ui/FilmStripView$ImageData;->getViewType()I

    move-result v11

    if-eq v11, v8, :cond_3

    .line 2050
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 2043
    .end local v2    # "imageData":Lcom/android/camera/ui/FilmStripView$ImageData;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3    # "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_2
    move v4, v7

    .line 2036
    goto :goto_0

    .line 2052
    .restart local v2    # "imageData":Lcom/android/camera/ui/FilmStripView$ImageData;
    .restart local v3    # "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .restart local v5    # "v":Landroid/view/View;
    :cond_3
    iput-object v5, p0, Lcom/android/camera/ui/FilmStripView;->mCameraView:Landroid/view/View;

    goto :goto_2

    .line 2059
    .end local v2    # "imageData":Lcom/android/camera/ui/FilmStripView$ImageData;
    .end local v3    # "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .end local v5    # "v":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v9, 0x0

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2060
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v6}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v0

    .line 2061
    .local v0, "dataNumber":I
    if-nez v0, :cond_6

    .line 2091
    :cond_5
    :goto_3
    return-void

    .line 2065
    :cond_6
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    invoke-direct {p0, v7}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v9

    aput-object v9, v6, v13

    .line 2066
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v13

    if-eqz v6, :cond_5

    .line 2069
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v13

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setLeftPosition(I)V

    .line 2070
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_4
    const/4 v6, 0x5

    if-ge v1, v6, :cond_7

    .line 2071
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v9, v1, -0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v7

    aput-object v7, v6, v1

    .line 2072
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v6, v1

    if-nez v6, :cond_8

    .line 2079
    :cond_7
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 2080
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    .line 2081
    iput-boolean v8, p0, Lcom/android/camera/ui/FilmStripView;->initialClampX:Z

    .line 2082
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->adjustChildZOrder()V

    .line 2083
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 2085
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    if-eqz v6, :cond_5

    .line 2086
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v6}, Lcom/android/camera/ui/FilmStripView$Listener;->onReload()V

    .line 2087
    if-nez v4, :cond_5

    .line 2088
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v7

    invoke-interface {v6, v7, v8}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFocusChanged(IZ)V

    goto :goto_3

    .line 2070
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private removeItem(I)V
    .locals 3
    .param p1, "itemID"    # I

    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v0

    .line 925
    .local v0, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v0, :cond_2

    .line 926
    const-string v1, "CAM_FilmStripView"

    const-string v2, "trying to remove a null item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/FilmStripView;->checkForRemoval(Lcom/android/camera/ui/FilmStripView$ImageData;Landroid/view/View;)V

    .line 930
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    goto :goto_0
.end method

.method private resetZoomView()V
    .locals 3

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 1462
    .local v0, "current":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v0, :cond_0

    .line 1465
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    .line 1466
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$300(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 1467
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$400(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 1468
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->resetTransform()V

    .line 1469
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$500(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 1470
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 1471
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    goto :goto_0
.end method

.method private slideViewBack(Lcom/android/camera/ui/FilmStripView$ViewItem;)V
    .locals 4
    .param p1, "item"    # Lcom/android/camera/ui/FilmStripView$ViewItem;

    .prologue
    const-wide/16 v2, 0x190

    .line 1497
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->animateTranslationX(FJLandroid/animation/TimeInterpolator;)V

    .line 1499
    invoke-virtual {p1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1500
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1501
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 1502
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1503
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1504
    return-void
.end method

.method private snapInCenter()V
    .locals 5

    .prologue
    .line 1167
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 1168
    .local v0, "currentItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    .line 1169
    .local v1, "currentViewCenter":I
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$MyController;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mIsUserScrolling:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    if-ne v3, v1, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    const/high16 v3, 0x44160000    # 600.0f

    iget v4, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    sub-int/2addr v4, v1

    .line 1175
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    .line 1176
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 1177
    .local v2, "snapInTime":I
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 1179
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentViewType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    .line 1180
    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$MyController;->isScaling()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 1183
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    goto :goto_0
.end method

.method private stepIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 938
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->inFilmStrip()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FilmStripView;->findTheNearestView(I)I

    move-result v2

    .line 945
    .local v2, "nearest":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    .line 950
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    if-eqz v3, :cond_2

    .line 951
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFocusChanged(IZ)V

    .line 953
    :cond_2
    add-int/lit8 v0, v2, -0x2

    .line 954
    .local v0, "adjust":I
    if-lez v0, :cond_8

    .line 955
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 956
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FilmStripView;->removeItem(I)V

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 958
    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int v3, v1, v0

    if-ge v3, v7, :cond_4

    .line 959
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int v5, v1, v0

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 961
    :cond_4
    rsub-int/lit8 v1, v0, 0x5

    :goto_3
    if-ge v1, v7, :cond_6

    .line 962
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aput-object v8, v3, v1

    .line 963
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    .line 964
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v4

    aput-object v4, v3, v1

    .line 961
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 967
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->adjustChildZOrder()V

    .line 982
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 983
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    if-eqz v3, :cond_0

    .line 984
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/camera/ui/FilmStripView$Listener;->onDataFocusChanged(IZ)V

    goto :goto_0

    .line 969
    .end local v1    # "k":I
    :cond_8
    const/4 v1, 0x4

    .restart local v1    # "k":I
    :goto_4
    add-int/lit8 v3, v0, 0x5

    if-lt v1, v3, :cond_9

    .line 970
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FilmStripView;->removeItem(I)V

    .line 969
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 972
    :cond_9
    const/4 v1, 0x4

    :goto_5
    add-int v3, v1, v0

    if-ltz v3, :cond_a

    .line 973
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int v5, v1, v0

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 972
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 975
    :cond_a
    rsub-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_7

    .line 976
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aput-object v8, v3, v1

    .line 977
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_b

    .line 978
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v4

    aput-object v4, v3, v1

    .line 975
    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_6
.end method

.method private translateLeftViewItem(IIF)V
    .locals 8
    .param p1, "currItem"    # I
    .param p2, "drawAreaWidth"    # I
    .param p3, "scaleFraction"    # F

    .prologue
    .line 1201
    if-ltz p1, :cond_0

    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    .line 1202
    :cond_0
    const-string v5, "CAM_FilmStripView"

    const-string v6, "currItem id out of bound."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v5, p1

    .line 1207
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v6, p1, 0x1

    aget-object v2, v5, v6

    .line 1208
    .local v2, "next":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 1209
    :cond_2
    const-string v5, "CAM_FilmStripView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid view item (curr or next == null). curr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    .line 1215
    .local v1, "currCenterX":I
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v3

    .line 1216
    .local v3, "nextCenterX":I
    sub-int v5, v3, p2

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, p3

    float-to-int v4, v5

    .line 1219
    .local v4, "translate":I
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    iget v7, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->layoutIn(Landroid/graphics/Rect;IF)V

    .line 1220
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1223
    iget v5, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v4

    sub-int v6, v3, v1

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    goto :goto_0

    .line 1226
    :cond_4
    int-to-float v5, v4

    iget v6, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    goto :goto_0
.end method

.method private update(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V
    .locals 14
    .param p1, "reporter"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x2

    .line 1957
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1958
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->reload()V

    .line 2019
    :goto_0
    return-void

    .line 1963
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v0, v1

    .line 1964
    .local v6, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v8

    .line 1965
    .local v8, "dataId":I
    invoke-interface {p1, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v0

    if-ne v0, v13, :cond_2

    .line 1966
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->reload()V

    goto :goto_0

    .line 1969
    :cond_2
    invoke-interface {p1, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1970
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->resetZoomView()V

    .line 1971
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FilmStripView;->updateViewItem(I)V

    .line 1972
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v0, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v7

    .line 1973
    .local v7, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    iget-boolean v0, p0, Lcom/android/camera/ui/FilmStripView;->mIsUserScrolling:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1977
    invoke-interface {v7}, Lcom/android/camera/ui/FilmStripView$ImageData;->getWidth()I

    move-result v1

    invoke-interface {v7}, Lcom/android/camera/ui/FilmStripView$ImageData;->getHeight()I

    move-result v2

    invoke-interface {v7}, Lcom/android/camera/ui/FilmStripView$ImageData;->getOrientation()I

    move-result v3

    .line 1978
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    .line 1976
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView;->calculateChildDimension(IIIII)[I

    move-result-object v9

    .line 1979
    .local v9, "dim":[I
    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v0

    const/4 v1, 0x0

    aget v1, v9, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/FilmStripView;->mCenterX:I

    .line 1984
    .end local v7    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    .end local v9    # "dim":[I
    :cond_3
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_7

    .line 1985
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v0, v10

    .line 1986
    if-eqz v6, :cond_6

    .line 1987
    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v8

    .line 1988
    invoke-interface {p1, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1989
    :cond_4
    invoke-direct {p0, v10}, Lcom/android/camera/ui/FilmStripView;->updateViewItem(I)V

    .line 1984
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1992
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v1, v10, 0x1

    aget-object v11, v0, v1

    .line 1993
    .local v11, "next":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v11, :cond_5

    .line 1994
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    invoke-virtual {v11}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    aput-object v1, v0, v10

    goto :goto_2

    .line 2000
    .end local v11    # "next":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_7
    const/4 v10, 0x3

    :goto_3
    const/4 v0, 0x5

    if-ge v10, v0, :cond_b

    .line 2001
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v6, v0, v10

    .line 2002
    if-eqz v6, :cond_a

    .line 2003
    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v8

    .line 2004
    invoke-interface {p1, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2005
    :cond_8
    invoke-direct {p0, v10}, Lcom/android/camera/ui/FilmStripView;->updateViewItem(I)V

    .line 2000
    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2008
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v1, v10, -0x1

    aget-object v12, v0, v1

    .line 2009
    .local v12, "prev":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v12, :cond_9

    .line 2010
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    invoke-virtual {v12}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    aput-object v1, v0, v10

    goto :goto_4

    .line 2014
    .end local v12    # "prev":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->adjustChildZOrder()V

    .line 2016
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->requestLayout()V

    .line 2018
    invoke-direct {p0, v13}, Lcom/android/camera/ui/FilmStripView;->updateBottomControls(Z)V

    goto/16 :goto_0
.end method

.method private updateBottomControls(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    .line 1101
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mBottomControls:Lcom/android/camera/ui/FilmstripBottomControls;

    if-nez v3, :cond_2

    .line 1109
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f0d005d

    .line 1110
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/FilmstripBottomControls;

    iput-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mBottomControls:Lcom/android/camera/ui/FilmstripBottomControls;

    .line 1111
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mBottomControls:Lcom/android/camera/ui/FilmstripBottomControls;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->setOnActionBarVisibilityListener(Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;)V

    .line 1112
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mBottomControls:Lcom/android/camera/ui/FilmstripBottomControls;

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/FilmstripBottomControls;->setListener(Lcom/android/camera/ui/FilmstripBottomControls$BottomControlsListener;)V

    .line 1115
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v1

    .line 1116
    .local v1, "requestId":I
    if-ltz v1, :cond_0

    .line 1124
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v2

    .line 1125
    .local v2, "total":I
    if-nez p1, :cond_3

    int-to-long v4, v1

    iget-wide v6, p0, Lcom/android/camera/ui/FilmStripView;->mLastItemId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/camera/ui/FilmStripView;->mLastTotalNumber:I

    if-eq v3, v2, :cond_0

    .line 1128
    :cond_3
    iput v2, p0, Lcom/android/camera/ui/FilmStripView;->mLastTotalNumber:I

    .line 1130
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v3, v1}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v0

    .line 1133
    .local v0, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mBottomControls:Lcom/android/camera/ui/FilmstripBottomControls;

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$ImageData;->isPhoto()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FilmstripBottomControls;->setEditButtonVisibility(Z)V

    .line 1137
    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$ImageData;->getViewType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1144
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v4, Lcom/android/camera/ui/FilmStripView$2;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/ui/FilmStripView$2;-><init>(Lcom/android/camera/ui/FilmStripView;I)V

    invoke-interface {v0, v3, v4}, Lcom/android/camera/ui/FilmStripView$ImageData;->isPhotoSphere(Landroid/content/Context;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V

    goto :goto_0
.end method

.method private updateInsertion(I)V
    .locals 14
    .param p1, "dataID"    # I

    .prologue
    .line 1657
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->findItemByDataID(I)I

    move-result v9

    .line 1658
    .local v9, "insertedItem":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getTotalNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1662
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FilmStripView;->findItemByDataID(I)I

    move-result v12

    .line 1663
    .local v12, "prev":I
    if-ltz v12, :cond_0

    const/4 v0, 0x4

    if-ge v12, v0, :cond_0

    .line 1666
    add-int/lit8 v9, v12, 0x1

    .line 1672
    .end local v12    # "prev":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_3

    .line 1673
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 1672
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1676
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setId(I)V

    goto :goto_1

    .line 1678
    :cond_3
    const/4 v0, -0x1

    if-ne v9, v0, :cond_5

    .line 1731
    :cond_4
    :goto_2
    return-void

    .line 1682
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v6

    .line 1684
    .local v6, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    invoke-interface {v6}, Lcom/android/camera/ui/FilmStripView$ImageData;->getWidth()I

    move-result v1

    invoke-interface {v6}, Lcom/android/camera/ui/FilmStripView$ImageData;->getHeight()I

    move-result v2

    invoke-interface {v6}, Lcom/android/camera/ui/FilmStripView$ImageData;->getOrientation()I

    move-result v3

    .line 1685
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    .line 1683
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FilmStripView;->calculateChildDimension(IIIII)[I

    move-result-object v7

    .line 1686
    .local v7, "dim":[I
    const/4 v0, 0x0

    aget v0, v7, v0

    iget v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewGap:I

    add-int v11, v0, v1

    .line 1687
    .local v11, "offsetX":I
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v13

    .line 1689
    .local v13, "viewItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    const/4 v0, 0x2

    if-lt v9, v0, :cond_8

    .line 1690
    const/4 v0, 0x2

    if-ne v9, v0, :cond_6

    .line 1691
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setLeftPosition(I)V

    .line 1694
    :cond_6
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FilmStripView;->removeItem(I)V

    .line 1695
    const/4 v8, 0x4

    :goto_3
    if-le v8, v9, :cond_a

    .line 1696
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v2, v8, -0x1

    aget-object v1, v1, v2

    aput-object v1, v0, v8

    .line 1697
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    if-eqz v0, :cond_7

    .line 1698
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    neg-int v1, v11

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    .line 1699
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FilmStripView;->slideViewBack(Lcom/android/camera/ui/FilmStripView$ViewItem;)V

    .line 1695
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1705
    :cond_8
    add-int/lit8 v9, v9, -0x1

    .line 1706
    if-ltz v9, :cond_4

    .line 1709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FilmStripView;->removeItem(I)V

    .line 1710
    const/4 v8, 0x1

    :goto_4
    if-gt v8, v9, :cond_a

    .line 1711
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    if-eqz v0, :cond_9

    .line 1712
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    int-to-float v1, v11

    iget v2, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationX(FF)V

    .line 1713
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FilmStripView;->slideViewBack(Lcom/android/camera/ui/FilmStripView$ViewItem;)V

    .line 1714
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    add-int/lit8 v1, v8, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v2, v2, v8

    aput-object v2, v0, v1

    .line 1710
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1719
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aput-object v13, v0, v9

    .line 1720
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v10

    .line 1721
    .local v10, "insertedView":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1722
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1723
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1724
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1725
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 1726
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 1727
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1728
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1729
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->adjustChildZOrder()V

    .line 1730
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    goto/16 :goto_2
.end method

.method private updateViewItem(I)V
    .locals 6
    .param p1, "itemID"    # I

    .prologue
    .line 1920
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v1, v4, p1

    .line 1921
    .local v1, "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v1, :cond_0

    .line 1922
    const-string v4, "CAM_FilmStripView"

    const-string v5, "trying to update an null item"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :goto_0
    return-void

    .line 1925
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 1927
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v0

    .line 1928
    .local v0, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v0, :cond_1

    .line 1929
    const-string v4, "CAM_FilmStripView"

    const-string v5, "trying recycle a null item"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1932
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$ImageData;->recycle()V

    .line 1934
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FilmStripView;->buildItemFromData(I)Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v2

    .line 1935
    .local v2, "newItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v2, :cond_2

    .line 1936
    const-string v4, "CAM_FilmStripView"

    const-string v5, "new item is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$ImageData;->prepare()V

    .line 1939
    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/FilmStripView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1942
    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->copyGeometry(Lcom/android/camera/ui/FilmStripView$ViewItem;)V

    .line 1943
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aput-object v2, v4, p1

    .line 1945
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->clampCenterX()Z

    move-result v3

    .line 1946
    .local v3, "stopScroll":Z
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FilmStripView;->checkCurrentDataCentered(I)V

    .line 1947
    if-eqz v3, :cond_3

    .line 1948
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    .line 1950
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->adjustChildZOrder()V

    .line 1951
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public checkSendToModeView(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1830
    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToPreviewMenu:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToMenu:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    if-nez v3, :cond_1

    .line 1870
    :cond_0
    :goto_0
    return v2

    .line 1832
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v3}, Lcom/android/camera/PreviewGestures;->getPhotoMenu()Lcom/android/camera/PhotoMenu;

    move-result-object v0

    .line 1833
    .local v0, "pMenu":Lcom/android/camera/PhotoMenu;
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v3}, Lcom/android/camera/PreviewGestures;->getVideoMenu()Lcom/android/camera/VideoMenu;

    move-result-object v1

    .line 1835
    .local v1, "vMenu":Lcom/android/camera/VideoMenu;
    if-eqz v0, :cond_3

    .line 1836
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1837
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isMenuBeingAnimated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1838
    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->isOverMenu(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1839
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mSendToMenu:Z

    goto :goto_0

    .line 1845
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isPreviewMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1846
    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->isOverPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1847
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mSendToPreviewMenu:Z

    goto :goto_0

    .line 1853
    :cond_3
    if-eqz v1, :cond_5

    .line 1854
    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1855
    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isMenuBeingAnimated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1856
    invoke-virtual {v1, p1}, Lcom/android/camera/VideoMenu;->isOverMenu(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1857
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mSendToMenu:Z

    goto :goto_0

    .line 1863
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isPreviewMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1864
    invoke-virtual {v1, p1}, Lcom/android/camera/VideoMenu;->isOverPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1865
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mSendToPreviewMenu:Z

    goto :goto_0

    .line 1870
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 864
    const/4 v0, 0x0

    return v0
.end method

.method public getController()Lcom/android/camera/ui/FilmStripView$Controller;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    return-object v0
.end method

.method public getCurrentId()I
    .locals 3

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 1088
    .local v0, "current":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v0, :cond_0

    .line 1089
    const/4 v1, -0x1

    .line 1091
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    goto :goto_0
.end method

.method public inCameraFullscreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1781
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FilmStripView;->isDataAtCenter(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1782
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentViewType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public inFilmStrip()Z
    .locals 2

    .prologue
    .line 1769
    iget v0, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inFullScreen()Z
    .locals 2

    .prologue
    .line 1773
    iget v0, p0, Lcom/android/camera/ui/FilmStripView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraPreview()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1777
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentViewType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FilmStripView;->layoutViewItems(Z)V

    .line 1433
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1434
    return-void
.end method

.method public onEdit()V
    .locals 3

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v0

    .line 1068
    .local v0, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/camera/data/LocalData;

    if-nez v1, :cond_1

    .line 1072
    .end local v0    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    :cond_0
    :goto_0
    return-void

    .line 1071
    .restart local v0    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    check-cast v0, Lcom/android/camera/data/LocalData;

    .end local v0    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->launchEditor(Lcom/android/camera/data/LocalData;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1787
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v5}, Lcom/android/camera/ui/FilmStripView$MyController;->isScrolling()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 1821
    :cond_1
    :goto_0
    return v3

    .line 1790
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->initialClampX:Z

    .line 1791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_3

    .line 1792
    iput-boolean v4, p0, Lcom/android/camera/ui/FilmStripView;->mCheckToIntercept:Z

    .line 1793
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mDown:Landroid/view/MotionEvent;

    .line 1794
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    aget-object v2, v4, v8

    .line 1796
    .local v2, "viewItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->canSwipeInFullScreen(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1797
    iput-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mCheckToIntercept:Z

    goto :goto_0

    .line 1800
    .end local v2    # "viewItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 1802
    iput-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mCheckToIntercept:Z

    goto :goto_0

    .line 1805
    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/ui/FilmStripView;->mCheckToIntercept:Z

    if-eqz v4, :cond_1

    .line 1808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 1811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 1812
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 1813
    .local v1, "deltaY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v8, :cond_1

    iget v4, p0, Lcom/android/camera/ui/FilmStripView;->mSlop:I

    mul-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 1816
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 1439
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 1440
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 1441
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1442
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mDrawArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/ZoomView;->layout(IIII)V

    .line 1445
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mController:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1446
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->resetZoomView()V

    .line 1447
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView;->layoutViewItems(Z)V

    .line 1449
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 828
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 830
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 831
    .local v1, "boundWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 832
    .local v0, "boundHeight":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    if-eqz v3, :cond_2

    .line 838
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v0, 0x2

    invoke-interface {v3, v4, v5}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->suggestViewSizeBound(II)V

    .line 841
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v4, v3

    .line 842
    .local v2, "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v2, :cond_3

    .line 843
    invoke-direct {p0, v2, v1, v0}, Lcom/android/camera/ui/FilmStripView;->measureViewItem(Lcom/android/camera/ui/FilmStripView$ViewItem;II)V

    .line 841
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 846
    .end local v2    # "item":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/FilmStripView;->clampCenterX()Z

    .line 848
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 849
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 851
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 848
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ZoomView;->measure(II)V

    goto :goto_0
.end method

.method public onTinyPlanet()V
    .locals 3

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v0

    .line 1077
    .local v0, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/camera/data/LocalData;

    if-nez v1, :cond_1

    .line 1081
    .end local v0    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    :cond_0
    :goto_0
    return-void

    .line 1080
    .restart local v0    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mActivity:Lcom/android/camera/CameraActivity;

    check-cast v0, Lcom/android/camera/data/LocalData;

    .end local v0    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->launchTinyPlanetEditor(Lcom/android/camera/data/LocalData;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1826
    const/4 v0, 0x1

    return v0
.end method

.method public onViewPhotoSphere()V
    .locals 3

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mViewItem:[Lcom/android/camera/ui/FilmStripView$ViewItem;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 1060
    .local v0, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-eqz v0, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$ImageData;->viewPhotoSphere(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public sendToModeView(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1874
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    if-nez v3, :cond_1

    .line 1916
    :cond_0
    :goto_0
    return v2

    .line 1877
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mReset:Z

    if-eqz v3, :cond_2

    .line 1878
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mSendToPreviewMenu:Z

    .line 1879
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mSendToMenu:Z

    .line 1880
    iput-boolean v2, p0, Lcom/android/camera/ui/FilmStripView;->mReset:Z

    .line 1882
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToPreviewMenu:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToMenu:Z

    if-eqz v3, :cond_5

    .line 1883
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v5, v3, :cond_4

    const/4 v3, 0x3

    .line 1884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1885
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/ui/FilmStripView;->mReset:Z

    .line 1887
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v3}, Lcom/android/camera/PreviewGestures;->getPhotoMenu()Lcom/android/camera/PhotoMenu;

    move-result-object v0

    .line 1888
    .local v0, "pMenu":Lcom/android/camera/PhotoMenu;
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v3}, Lcom/android/camera/PreviewGestures;->getVideoMenu()Lcom/android/camera/VideoMenu;

    move-result-object v1

    .line 1889
    .local v1, "vMenu":Lcom/android/camera/VideoMenu;
    if-eqz v0, :cond_9

    .line 1890
    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToPreviewMenu:Z

    if-eqz v3, :cond_6

    .line 1891
    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1892
    :cond_6
    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToMenu:Z

    if-eqz v3, :cond_7

    .line 1893
    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1894
    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1895
    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1898
    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isPreviewMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1899
    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1903
    :cond_9
    if-eqz v1, :cond_0

    .line 1904
    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToPreviewMenu:Z

    if-eqz v3, :cond_a

    .line 1905
    invoke-virtual {v1, p1}, Lcom/android/camera/VideoMenu;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1906
    :cond_a
    iget-boolean v3, p0, Lcom/android/camera/ui/FilmStripView;->mSendToMenu:Z

    if-eqz v3, :cond_b

    .line 1907
    invoke-virtual {v1, p1}, Lcom/android/camera/VideoMenu;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1908
    :cond_b
    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1909
    invoke-virtual {v1, p1}, Lcom/android/camera/VideoMenu;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1912
    :cond_c
    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isPreviewMenuBeingShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1913
    invoke-virtual {v1, p1}, Lcom/android/camera/VideoMenu;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/camera/ui/FilmStripView$DataAdapter;

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    .line 1735
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->suggestViewSizeBound(II)V

    .line 1736
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView;->mDataAdapter:Lcom/android/camera/ui/FilmStripView$DataAdapter;

    new-instance v1, Lcom/android/camera/ui/FilmStripView$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilmStripView$4;-><init>(Lcom/android/camera/ui/FilmStripView;)V

    invoke-interface {v0, v1}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V

    .line 1766
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/FilmStripView$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/ui/FilmStripView$Listener;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView;->mListener:Lcom/android/camera/ui/FilmStripView$Listener;

    .line 741
    return-void
.end method

.method public setPanoramaViewHelper(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .line 752
    return-void
.end method

.method public setPreviewGestures(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .param p1, "previewGestures"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView;->mPreviewGestures:Lcom/android/camera/PreviewGestures;

    .line 728
    return-void
.end method

.method public setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V
    .locals 0
    .param p1, "renderOverlay"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 725
    return-void
.end method

.method public setViewGap(I)V
    .locals 0
    .param p1, "viewGap"    # I

    .prologue
    .line 744
    iput p1, p0, Lcom/android/camera/ui/FilmStripView;->mViewGap:I

    .line 745
    return-void
.end method
