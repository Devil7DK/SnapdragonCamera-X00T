.class public Lcom/android/camera/PhotoMenu;
.super Lcom/android/camera/MenuController;
.source "PhotoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/CountdownTimerPopup$Listener;
.implements Lcom/android/camera/ui/ListMenu$Listener;
.implements Lcom/android/camera/ui/ListSubMenu$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoMenu$MakeupHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final CLICK_THRESHOLD:I = 0xc8

.field private static final DEVELOPER_MENU_TOUCH_COUNT:I = 0xa

.field private static final MAKEUP_MESSAGE_ID:I = 0x0

.field private static final MODE_FILTER:I = 0x1

.field private static final MODE_MAKEUP:I = 0x2

.field private static final MODE_SCENE:I = 0x0

.field private static final POPUP_FIRST_LEVEL:I = 0x1

.field private static final POPUP_IN_ANIMATION_FADE:I = 0x4

.field private static final POPUP_IN_ANIMATION_SLIDE:I = 0x3

.field private static final POPUP_IN_MAKEUP:I = 0x5

.field private static final POPUP_NONE:I = 0x0

.field private static final POPUP_SECOND_LEVEL:I = 0x2

.field private static final PREVIEW_MENU_IN_ANIMATION:I = 0x1

.field private static final PREVIEW_MENU_NONE:I = 0x0

.field private static final PREVIEW_MENU_ON:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBokehSwitcher:Landroid/view/View;

.field private mCameraSwitcher:Landroid/view/View;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

.field private mHdrSwitcher:Landroid/view/View;

.field private mIsCDSUpdated:Z

.field private mIsTNREnabled:Z

.field private mListMenu:Lcom/android/camera/ui/ListMenu;

.field private mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

.field private mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

.field private mOtherKeys1:[Ljava/lang/String;

.field private mOtherKeys2:[Ljava/lang/String;

.field private mPopupStatus:I

.field private mPrevSavedCDS:Ljava/lang/String;

.field private mPreviewMenu:Landroid/view/View;

.field private mPreviewMenuStatus:I

.field private mPreviewThumbnail:Landroid/view/View;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mSceneStatus:I

.field private mSettingMenu:Landroid/view/View;

.field private final mSettingOff:Ljava/lang/String;

.field private final mSettingOn:Ljava/lang/String;

.field private mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mUI:Lcom/android/camera/PhotoUI;

.field private mWasVisibleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private previewMenuSize:I

.field private privateCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "PhotoMenu"

    sput-object v0, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/PhotoUI;
    .param p3, "makeupListener"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/camera/MenuController;-><init>(Landroid/app/Activity;)V

    .line 119
    iput-boolean v0, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    .line 121
    iput v0, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    .line 127
    new-instance v0, Lcom/android/camera/PhotoMenu$MakeupHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoMenu$MakeupHandler;-><init>(Lcom/android/camera/PhotoMenu;)V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    .line 133
    iput-object p2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    .line 134
    const v0, 0x7f0e0352

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 135
    const v0, 0x7f0e0353

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 137
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    .line 138
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    .line 139
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    .line 140
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    .line 141
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    .line 142
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    .line 143
    iput-object p3, p0, Lcom/android/camera/PhotoMenu;->mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 144
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingMenu:Landroid/view/View;

    .line 145
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    .line 146
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewThumbnail:Landroid/view/View;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/TsMakeupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoMenu;->showAlertDialog(Lcom/android/camera/ListPreference;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->toggleMakeupSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->closeMakeup()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    return-void
.end method

.method private animateFadeOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x4

    .line 351
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 355
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 356
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 357
    new-instance v1, Lcom/android/camera/PhotoMenu$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PhotoMenu$1;-><init>(Lcom/android/camera/PhotoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 396
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x1

    .line 555
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    if-ne v1, v2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 561
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 566
    :goto_1
    new-instance v1, Lcom/android/camera/PhotoMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$3;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 589
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private animateSlideOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x3

    .line 400
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 404
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 405
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x1

    .line 406
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 437
    :goto_1
    new-instance v1, Lcom/android/camera/PhotoMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PhotoMenu$2;-><init>(Lcom/android/camera/PhotoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 474
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 409
    :sswitch_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 412
    :sswitch_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 415
    :sswitch_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 418
    :sswitch_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 424
    :sswitch_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 427
    :sswitch_5
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 430
    :sswitch_6
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 433
    :sswitch_7
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 422
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method private buttonSetEnabled(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 593
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 594
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 595
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "v2":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 599
    .end local v0    # "v2":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private changeFilterModeControlIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1472
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1473
    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1474
    const-string p1, "Off"

    .line 1478
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_filter_mode_key"

    .line 1479
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 1480
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v2, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    .line 1482
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 1483
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1485
    .end local v0    # "index":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "pref":Lcom/android/camera/IconListPreference;
    :cond_0
    return-void

    .line 1476
    :cond_1
    const-string p1, "On"

    goto :goto_0
.end method

.method private closeMakeup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1171
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->hideMakeupUI()V

    .line 1174
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1175
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->hideMakeupUI()V

    goto :goto_0
.end method

.method private initMakeupMenu()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1131
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1134
    :cond_0
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1135
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu$MakeupHandler;->removeMessages(I)V

    .line 1136
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1137
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1138
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/PhotoMenu$MakeupHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1604
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAlertDialog(Lcom/android/camera/ListPreference;)V
    .locals 3
    .param p1, "faceDetectPref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1145
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 1146
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e022b

    .line 1147
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e022c

    new-instance v2, Lcom/android/camera/PhotoMenu$9;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/PhotoMenu$9;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e022d

    new-instance v2, Lcom/android/camera/PhotoMenu$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoMenu$8;-><init>(Lcom/android/camera/PhotoMenu;)V

    .line 1157
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private toggleMakeupSettings()V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1167
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->initMakeupMenu()V

    .line 1168
    return-void
.end method

.method private updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "scenePref"    # Lcom/android/camera/ListPreference;
    .param p2, "hdrPref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 899
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 901
    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 903
    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_3
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 905
    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 906
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_hdr_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method public addFilterMode()V
    .locals 32

    .prologue
    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera_coloreffect_key"

    .line 1371
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    check-cast v20, Lcom/android/camera/IconListPreference;

    .line 1372
    .local v20, "pref":Lcom/android/camera/IconListPreference;
    if-nez v20, :cond_0

    .line 1469
    :goto_0
    return-void

    .line 1375
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v23

    .line 1376
    .local v23, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v17

    .line 1377
    .local v17, "mIsDefaultToPortrait":Z
    if-nez v17, :cond_1

    .line 1378
    add-int/lit8 v29, v23, 0x5a

    move/from16 v0, v29

    rem-int/lit16 v0, v0, 0x168

    move/from16 v23, v0

    .line 1380
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const-string v30, "window"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 1381
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1382
    .local v5, "display":Landroid/view/Display;
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1384
    .local v6, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 1385
    .local v22, "r":Landroid/content/res/Resources;
    const v29, 0x7f0c0086

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x7f0c0088

    .line 1386
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    mul-float v30, v30, v31

    add-float v29, v29, v30

    const/high16 v30, 0x3f800000    # 1.0f

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v8, v0

    .line 1387
    .local v8, "height":I
    const v29, 0x7f0c0087

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x7f0c0088

    .line 1388
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    mul-float v30, v30, v31

    add-float v29, v29, v30

    const/high16 v30, 0x3f800000    # 1.0f

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1390
    .local v27, "width":I
    const/4 v7, 0x0

    .line 1391
    .local v7, "gridRes":I
    if-eqz v23, :cond_2

    const/16 v29, 0xb4

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    :cond_2
    const/16 v19, 0x1

    .line 1392
    .local v19, "portrait":Z
    :goto_1
    move/from16 v24, v8

    .line 1393
    .local v24, "size":I
    if-eqz v19, :cond_5

    .line 1394
    const v7, 0x7f040045

    .line 1395
    move/from16 v24, v27

    .line 1399
    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1401
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1402
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1404
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v25

    .line 1406
    .local v25, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 1408
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1411
    .local v4, "basic":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1412
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1413
    .local v21, "previewMenuLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 1414
    const/16 v18, 0x0

    .line 1415
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v19, :cond_6

    .line 1416
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v29, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1417
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1425
    :goto_3
    new-instance v29, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-direct/range {v29 .. v31}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    const v29, 0x7f0d0062

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1428
    .local v15, "layout":Landroid/widget/LinearLayout;
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v26, v0

    .line 1429
    .local v26, "views":[Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v12

    .line 1430
    .local v12, "init":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_7

    .line 1431
    const v29, 0x7f040011

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/RotateLayout;

    .line 1433
    .local v16, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v29, 0x7f0d0053

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1434
    .local v10, "imageView":Landroid/widget/ImageView;
    move v13, v9

    .line 1436
    .local v13, "j":I
    new-instance v29, Lcom/android/camera/PhotoMenu$13;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/camera/PhotoMenu$13;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1459
    aput-object v10, v26, v13

    .line 1460
    if-ne v9, v12, :cond_3

    .line 1461
    const v29, -0xcc4a1b

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1462
    :cond_3
    const v29, 0x7f0d0061

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1463
    .local v14, "label":Landroid/widget/TextView;
    aget v29, v25, v9

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1464
    aget-object v29, v6, v9

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1430
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1391
    .end local v4    # "basic":Landroid/widget/FrameLayout;
    .end local v9    # "i":I
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "init":I
    .end local v13    # "j":I
    .end local v14    # "label":Landroid/widget/TextView;
    .end local v15    # "layout":Landroid/widget/LinearLayout;
    .end local v16    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "portrait":Z
    .end local v21    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .end local v24    # "size":I
    .end local v25    # "thumbnails":[I
    .end local v26    # "views":[Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1397
    .restart local v19    # "portrait":Z
    .restart local v24    # "size":I
    :cond_5
    const v7, 0x7f040012

    goto/16 :goto_2

    .line 1420
    .restart local v4    # "basic":Landroid/widget/FrameLayout;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v21    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .restart local v25    # "thumbnails":[I
    :cond_6
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v29, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1421
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1423
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v29

    sub-int v29, v29, v24

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    goto/16 :goto_3

    .line 1467
    .restart local v9    # "i":I
    .restart local v12    # "init":I
    .restart local v15    # "layout":Landroid/widget/LinearLayout;
    .restart local v26    # "views":[Landroid/view/View;
    :cond_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1468
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public addModeBack()V
    .locals 2

    .prologue
    .line 1205
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    if-nez v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->addSceneMode()V

    .line 1208
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->addFilterMode()V

    .line 1211
    :cond_1
    return-void
.end method

.method public addSceneMode()V
    .locals 36

    .prologue
    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v33, v0

    const-string v34, "pref_camera_scenemode_key"

    .line 1215
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v24

    check-cast v24, Lcom/android/camera/IconListPreference;

    .line 1216
    .local v24, "pref":Lcom/android/camera/IconListPreference;
    if-nez v24, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1219
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v27

    .line 1220
    .local v27, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v21

    .line 1221
    .local v21, "mIsDefaultToPortrait":Z
    if-nez v21, :cond_1

    .line 1222
    add-int/lit8 v33, v27, 0x5a

    move/from16 v0, v33

    rem-int/lit16 v0, v0, 0x168

    move/from16 v27, v0

    .line 1224
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const-string v34, "window"

    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/WindowManager;

    .line 1225
    .local v32, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v32 .. v32}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1227
    .local v8, "display":Landroid/view/Display;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 1228
    .local v9, "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 1230
    .local v10, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v29

    .line 1232
    .local v29, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1233
    .local v26, "r":Landroid/content/res/Resources;
    const v33, 0x7f0c0083

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    const v35, 0x7f0c0085

    .line 1234
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v12, v0

    .line 1235
    .local v12, "height":I
    const v33, 0x7f0c0084

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    const v35, 0x7f0c0085

    .line 1236
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v31, v0

    .line 1238
    .local v31, "width":I
    const/4 v11, 0x0

    .line 1239
    .local v11, "gridRes":I
    if-eqz v27, :cond_2

    const/16 v33, 0xb4

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    :cond_2
    const/16 v23, 0x1

    .line 1240
    .local v23, "portrait":Z
    :goto_1
    move/from16 v28, v12

    .line 1241
    .local v28, "size":I
    if-eqz v23, :cond_6

    .line 1242
    const v11, 0x7f040045

    .line 1243
    move/from16 v28, v31

    .line 1247
    :goto_2
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1249
    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1250
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const-string v34, "layout_inflater"

    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 1254
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v15, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1257
    .local v6, "basic":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1258
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1259
    .local v25, "previewMenuLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 1260
    const/16 v22, 0x0

    .line 1261
    .local v22, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v23, :cond_7

    .line 1262
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    .end local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v33, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1263
    .restart local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1271
    :goto_3
    new-instance v33, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v34, -0x1

    const/16 v35, -0x1

    invoke-direct/range {v33 .. v35}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    const v33, 0x7f0d0062

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 1275
    .local v19, "layout":Landroid/widget/LinearLayout;
    array-length v0, v9

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v30, v0

    .line 1276
    .local v30, "views":[Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v16

    .line 1277
    .local v16, "init":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    array-length v0, v9

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v13, v0, :cond_c

    .line 1278
    const v33, 0x7f040038

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/camera/ui/RotateLayout;

    .line 1281
    .local v20, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v33, 0x7f0d0053

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 1282
    .local v14, "imageView":Landroid/widget/ImageView;
    const v33, 0x7f0d0061

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1283
    .local v18, "label":Landroid/widget/TextView;
    move/from16 v17, v13

    .line 1285
    .local v17, "j":I
    new-instance v33, Lcom/android/camera/PhotoMenu$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v17

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/PhotoMenu$11;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1310
    const v33, 0x7f0d00df

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1311
    .local v7, "border":Landroid/view/View;
    aput-object v7, v30, v17

    .line 1312
    move/from16 v0, v16

    if-ne v13, v0, :cond_3

    .line 1313
    const v33, 0x7f02016e

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1314
    :cond_3
    aget v33, v29, v13

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1315
    aget-object v33, v9, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1319
    aget-object v33, v10, v13

    const-string v34, "asd"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v33, 0x0

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 1277
    :cond_4
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1239
    .end local v6    # "basic":Landroid/widget/FrameLayout;
    .end local v7    # "border":Landroid/view/View;
    .end local v13    # "i":I
    .end local v14    # "imageView":Landroid/widget/ImageView;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "init":I
    .end local v17    # "j":I
    .end local v18    # "label":Landroid/widget/TextView;
    .end local v19    # "layout":Landroid/widget/LinearLayout;
    .end local v20    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "portrait":Z
    .end local v25    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .end local v28    # "size":I
    .end local v30    # "views":[Landroid/view/View;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 1245
    .restart local v23    # "portrait":Z
    .restart local v28    # "size":I
    :cond_6
    const v11, 0x7f040012

    goto/16 :goto_2

    .line 1266
    .restart local v6    # "basic":Landroid/widget/FrameLayout;
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    .restart local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "previewMenuLayout":Landroid/widget/LinearLayout;
    :cond_7
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    .end local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v33, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v33

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1267
    .restart local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1269
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v33

    sub-int v33, v33, v28

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    goto/16 :goto_3

    .line 1320
    .restart local v7    # "border":Landroid/view/View;
    .restart local v13    # "i":I
    .restart local v14    # "imageView":Landroid/widget/ImageView;
    .restart local v16    # "init":I
    .restart local v17    # "j":I
    .restart local v18    # "label":Landroid/widget/TextView;
    .restart local v19    # "layout":Landroid/widget/LinearLayout;
    .restart local v20    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .restart local v30    # "views":[Landroid/view/View;
    :cond_8
    const/16 v33, 0x8

    goto :goto_5

    .line 1321
    :cond_9
    aget-object v33, v10, v13

    const-string v34, "hdr"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v33, v0

    const-string v34, "pref_camera_auto_hdr_key"

    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 1323
    .local v5, "autoHdrPref":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v33

    const-string v34, "enable"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1324
    const/16 v33, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_6

    .line 1326
    .end local v5    # "autoHdrPref":Lcom/android/camera/ListPreference;
    :cond_a
    sget-boolean v33, Lcom/android/camera/app/CameraApp;->mIsLowMemoryDevice:Z

    if-eqz v33, :cond_4

    aget-object v33, v10, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v34, v0

    .line 1327
    invoke-virtual/range {v34 .. v34}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0e0042

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_b

    aget-object v33, v10, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v34, v0

    .line 1329
    invoke-virtual/range {v34 .. v34}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0e0044

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1330
    :cond_b
    const/16 v33, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1333
    .end local v7    # "border":Landroid/view/View;
    .end local v14    # "imageView":Landroid/widget/ImageView;
    .end local v17    # "j":I
    .end local v18    # "label":Landroid/widget/TextView;
    .end local v20    # "layout2":Lcom/android/camera/ui/RotateLayout;
    :cond_c
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1334
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public animateFadeIn(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 479
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 481
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "forcePortrait"    # Z

    .prologue
    .line 484
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    .line 485
    .local v1, "orientation":I
    if-nez p3, :cond_0

    .line 486
    const/4 v1, 0x0

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 490
    .local v2, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v3, 0x1

    .line 491
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 492
    sparse-switch v1, :sswitch_data_0

    .line 538
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 539
    return-void

    .line 494
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 495
    .local v0, "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 496
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 499
    .end local v0    # "dest":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 500
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 501
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 504
    .end local v0    # "dest":F
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 505
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 506
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 509
    .end local v0    # "dest":F
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 510
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 511
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 515
    .end local v0    # "dest":F
    :cond_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 517
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 518
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 519
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 522
    .end local v0    # "dest":F
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 523
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 524
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 527
    .end local v0    # "dest":F
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 528
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 529
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 532
    .end local v0    # "dest":F
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 533
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 534
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 515
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public animateSlideOutPreviewMenu()V
    .locals 1

    .prologue
    .line 542
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 544
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    if-nez v0, :cond_1

    .line 552
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public closeAllView()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1586
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    .line 1587
    return-void
.end method

.method public closeMakeupMode(Z)V
    .locals 1
    .param p1, "isMakeup"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeSceneModeMenu()V

    .line 338
    return-void
.end method

.method public closeSceneMode()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeSceneModeMenu()V

    .line 334
    return-void
.end method

.method public closeView()V
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eqz v0, :cond_1

    .line 1594
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1595
    :cond_1
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public handleBackKey()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 309
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v2}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v2}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 312
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v2}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 313
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 314
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    if-ne v2, v3, :cond_2

    .line 318
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/view/View;)V

    goto :goto_0

    .line 321
    :cond_2
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-nez v2, :cond_3

    move v0, v1

    .line 322
    goto :goto_0

    .line 323
    :cond_3
    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v0, :cond_4

    .line 324
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 325
    :cond_4
    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v3, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/PhotoMenu;->animateFadeOut(Landroid/widget/ListView;I)V

    .line 327
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v1}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    goto :goto_0
.end method

.method public hideCameraControls(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    const/4 v1, 0x4

    .line 1773
    if-eqz p1, :cond_2

    move v0, v1

    .line 1774
    .local v0, "status":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSettingMenu:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_3

    .line 1777
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1781
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1783
    if-ne v0, v1, :cond_4

    .line 1784
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1787
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewThumbnail:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    return-void

    .line 1773
    .end local v0    # "status":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1779
    .restart local v0    # "status":I
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1789
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1791
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public hideTSMakeUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1802
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 1804
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1805
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 1806
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1807
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1810
    :cond_0
    return-void
.end method

.method public hideTopMenu(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1759
    if-eqz p1, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1761
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1762
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1763
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    :goto_0
    return-void

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1767
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initBokehModeButton(Landroid/view/View;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 971
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera_bokeh_mode_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 974
    .local v3, "pref":Lcom/android/camera/IconListPreference;
    if-nez v3, :cond_0

    .line 975
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    :goto_0
    return-void

    .line 979
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 980
    .local v0, "iconIds":[I
    const/4 v4, -0x1

    .line 981
    .local v4, "resid":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 982
    .local v1, "index":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 983
    aget v4, v0, v1

    :goto_1
    move-object v2, p1

    .line 987
    check-cast v2, Landroid/widget/ImageView;

    .line 988
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 990
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 992
    new-instance v5, Lcom/android/camera/PhotoMenu$5;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/PhotoMenu$5;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 985
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v4

    goto :goto_1
.end method

.method public initFilterModeButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1346
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_coloreffect_key"

    .line 1348
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1349
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 1352
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    new-instance v1, Lcom/android/camera/PhotoMenu$12;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$12;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initMakeupModeButton(Landroid/view/View;)V
    .locals 9
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1088
    sget-boolean v6, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v6, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_tsmakeup_key"

    .line 1093
    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IconListPreference;

    .line 1094
    .local v4, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v4, :cond_0

    .line 1097
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 1098
    .local v0, "iconIds":[I
    const/4 v5, -0x1

    .line 1099
    .local v5, "resid":I
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1100
    .local v1, "index":I
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    .line 1102
    aget v5, v0, v1

    .line 1107
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 1108
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1110
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, "makeupOn":Ljava/lang/String;
    sget-object v6, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PhotoMenu.initMakeupModeButton():current init makeupOn is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v6, Lcom/android/camera/PhotoMenu$7;

    invoke-direct {v6, p0}, Lcom/android/camera/PhotoMenu$7;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1105
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "makeupOn":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v5

    goto :goto_1
.end method

.method public initSceneModeButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1183
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_scenemode_key"

    .line 1185
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1186
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1188
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    new-instance v1, Lcom/android/camera/PhotoMenu$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$10;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initSingleBokehModeButton(Landroid/view/View;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1043
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_asus_single_bokeh_mode_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 1046
    .local v3, "pref":Lcom/android/camera/IconListPreference;
    if-nez v3, :cond_0

    .line 1047
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    :goto_0
    return-void

    .line 1051
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 1052
    .local v0, "iconIds":[I
    const/4 v4, -0x1

    .line 1053
    .local v4, "resid":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1054
    .local v1, "index":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 1055
    aget v4, v0, v1

    :goto_1
    move-object v2, p1

    .line 1059
    check-cast v2, Landroid/widget/ImageView;

    .line 1060
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1062
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    new-instance v5, Lcom/android/camera/PhotoMenu$6;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/PhotoMenu$6;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1057
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v4

    goto :goto_1
.end method

.method public initSwitchItem(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "switcher"    # Landroid/view/View;

    .prologue
    .line 914
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 915
    invoke-virtual {v4, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 916
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    if-nez v2, :cond_0

    .line 968
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 920
    .local v0, "iconIds":[I
    const/4 v3, -0x1

    .line 921
    .local v3, "resid":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 922
    .local v1, "index":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 924
    aget v3, v0, v1

    :goto_1
    move-object v4, p2

    .line 929
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 930
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v4, Lcom/android/camera/PhotoMenu$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/PhotoMenu$4;-><init>(Lcom/android/camera/PhotoMenu;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v3

    goto :goto_1
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 11
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 155
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 156
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 159
    .local v8, "locale":Ljava/util/Locale;
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->removeAllViews()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/android/camera/TsMakeupManager;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/TsMakeupManager;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoMenu;Lcom/android/camera/PhotoUI;Lcom/android/camera/PreferenceGroup;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    .line 166
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/TsMakeupManager;->setMakeupLevelListener(Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initSceneModeButton(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initFilterModeButton(Landroid/view/View;)V

    .line 172
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initMakeupModeButton(Landroid/view/View;)V

    .line 179
    :goto_0
    const/4 v6, -0x1

    .line 180
    .local v6, "camId":I
    const/4 v7, 0x0

    .line 181
    .local v7, "camNum":I
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v9

    check-cast v9, Lcom/android/camera/PhotoModule;

    .line 183
    .local v9, "module":Lcom/android/camera/PhotoModule;
    invoke-virtual {v9}, Lcom/android/camera/PhotoModule;->getCurrentCameraId()I

    move-result v6

    .line 184
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    .line 186
    .end local v9    # "module":Lcom/android/camera/PhotoModule;
    :cond_2
    const/4 v0, 0x1

    if-eq v6, v0, :cond_5

    const/4 v0, 0x2

    if-le v7, v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initBokehModeButton(Landroid/view/View;)V

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v0, :cond_3

    .line 197
    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 198
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 205
    :cond_3
    :goto_2
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_jpegquality_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_camera_timer_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_camera_savepath_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_longshot_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_facedetection_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_camera_iso_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pref_camera_antibanding_key"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "chroma-flash"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_camera_redeyereduction_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pref_camera_selfiemirror_key"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pref_camera_shuttersound_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 232
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_jpegquality_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_camera_timer_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_camera_savepath_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_longshot_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_facedetection_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_camera_iso_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "chroma-flash"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_camera_focusmode_key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_camera_redeyereduction_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pref_camera_auto_hdr_key"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pref_camera_hdr_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pref_camera_hdr_need_1x_key"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_camera_cds_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pref_camera_tnr_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_camera_histogram_key"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_camera_zsl_key"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pref_camera_timer_sound_key"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pref_camera_facerc_key"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pref_camera_touchafaec_key"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pref_camera_selectablezoneaf_key"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pref_camera_pictureformat_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pref_camera_saturation_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pref_camera_contrast_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "pref_camera_sharpness_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "pref_camera_autoexposure_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pref_camera_antibanding_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pref_camera_denoise_key"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pref_camera_instant_capture_key"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "pref_camera_bokeh_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "pref_camera_bokeh_mpo_key"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "pref_asus_single_bokeh_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "pref_camera_manual_exp_key"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pref_camera_manual_wb_key"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "pref_camera_manual_focus_key"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "pref_camera_selfiemirror_key"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "pref_camera_shuttersound_key"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "pref_camera_zoom_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 286
    const-string v0, "pref_camera_id_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 287
    return-void

    .line 175
    .end local v6    # "camId":I
    .end local v7    # "camNum":I
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 190
    .restart local v6    # "camId":I
    .restart local v7    # "camNum":I
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initSingleBokehModeButton(Landroid/view/View;)V

    goto/16 :goto_1

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected initializePopup()V
    .locals 27

    .prologue
    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const-string v24, "layout_inflater"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 702
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v23, 0x7f040016

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/camera/ui/ListMenu;

    .line 705
    .local v15, "popup1":Lcom/android/camera/ui/ListMenu;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/camera/ui/ListMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListMenu$Listener;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/PhotoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 708
    .local v10, "keys":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 709
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/PhotoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 710
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v10}, Lcom/android/camera/ui/ListMenu;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 714
    const-string v23, "pref_camera_recordlocation_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 716
    :cond_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_scenemode_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 720
    .local v16, "pref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_hdr_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 721
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 722
    .local v18, "sceneMode":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_facedetection_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 723
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 724
    .local v7, "faceDetection":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_zsl_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 725
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    .line 726
    .local v22, "zsl":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_auto_hdr_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 727
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "autohdr":Ljava/lang/String;
    :goto_3
    if-eqz v18, :cond_2

    const-string v23, "auto"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    const-string v23, "enable"

    .line 729
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 730
    :cond_3
    const-string v23, "pref_camera_focusmode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 731
    const-string v23, "pref_camera_autoexposure_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 732
    const-string v23, "pref_camera_touchafaec_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 733
    const-string v23, "pref_camera_saturation_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 734
    const-string v23, "pref_camera_contrast_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 735
    const-string v23, "pref_camera_sharpness_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 736
    const-string v23, "pref_camera_coloreffect_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 737
    const-string v23, "pref_camera_flashmode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 738
    const-string v23, "pref_camera_whitebalance_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 739
    const-string v23, "pref_camera_exposure_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 740
    const-string v23, "chroma-flash"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 742
    :cond_4
    if-eqz v4, :cond_5

    const-string v23, "enable"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 743
    const-string v23, "pref_camera_scenemode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 746
    :cond_5
    if-eqz v7, :cond_6

    sget-object v23, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 747
    const-string v23, "pref_camera_facerc_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 749
    :cond_6
    const-string v24, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v23

    if-nez v23, :cond_f

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_advanced_features_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 752
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "advancedFeatures":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0e0041

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 756
    .local v21, "ubiFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0e0042

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 758
    .local v17, "reFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0e0043

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 760
    .local v6, "chromaFlashOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0e0044

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 762
    .local v13, "optiZoomOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0e0045

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 764
    .local v8, "fssrOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0e0046

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 766
    .local v20, "truePortraitOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0e0047

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 769
    .local v12, "multiTouchFocusOn":Ljava/lang/String;
    if-eqz v22, :cond_11

    sget-object v23, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ZSL_OFF:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 770
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "pref_camera_advanced_features_key"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e0035

    .line 771
    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 770
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 773
    const-string v23, "pref_camera_advanced_features_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 774
    const-string v23, "pref_camera_instant_capture_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 776
    sget-boolean v23, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v23, :cond_7

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-nez v23, :cond_7

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 813
    :cond_7
    :goto_6
    if-eqz v4, :cond_14

    const-string v23, "enable"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/ui/CameraControls;->removeFromViewList(Landroid/view/View;)V

    .line 820
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_bokeh_mode_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 821
    if-eqz v16, :cond_15

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, "bokeh":Ljava/lang/String;
    :goto_8
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 828
    const-string v23, "pref_camera_scenemode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 829
    const-string v23, "pref_camera_hdr_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 830
    const-string v23, "pref_camera_zsl_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 831
    const-string v23, "pref_camera_flashmode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 832
    const-string v23, "pref_camera_longshot_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 833
    const-string v23, "pref_camera_coloreffect_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 834
    const-string v23, "chroma-flash"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 835
    const-string v23, "pref_camera_picturesize_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 836
    const-string v23, "pref_camera_tsmakeup_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 838
    const-string v23, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0394

    .line 839
    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v23, "pref_camera_hdr_key"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v23, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0076

    .line 842
    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v23, "pref_camera_flashmode_key"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v23, "pref_camera_longshot_key"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v23, "pref_camera_coloreffect_key"

    const-string v24, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v23, "chroma-flash"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_picturesize_key"

    .line 848
    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 849
    .local v14, "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v14}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v11, v23, v24

    .line 850
    .local v11, "maxSize":Ljava/lang/CharSequence;
    if-eqz v11, :cond_8

    .line 851
    const-string v23, "pref_camera_picturesize_key"

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_8
    const-string v23, "pref_camera_tsmakeup_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0225

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .end local v11    # "maxSize":Ljava/lang/CharSequence;
    .end local v14    # "picSize":Lcom/android/camera/ListPreference;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_asus_single_bokeh_mode_key"

    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 861
    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 862
    .local v19, "single_bokeh":Ljava/lang/String;
    :goto_a
    const-string v23, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 866
    const-string v23, "pref_camera_scenemode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 867
    const-string v23, "pref_camera_hdr_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 868
    const-string v23, "pref_camera_zsl_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 869
    const-string v23, "pref_camera_flashmode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 870
    const-string v23, "pref_camera_longshot_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 871
    const-string v23, "pref_camera_coloreffect_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 872
    const-string v23, "chroma-flash"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 873
    const-string v23, "pref_camera_picturesize_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 875
    const-string v23, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0394

    .line 876
    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 875
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v23, "pref_camera_hdr_key"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v23, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0076

    .line 879
    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 878
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v23, "pref_camera_flashmode_key"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v23, "pref_camera_longshot_key"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v23, "pref_camera_coloreffect_key"

    const-string v24, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v23, "chroma-flash"

    const-string v24, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    const-string v24, "pref_camera_picturesize_key"

    .line 885
    invoke-virtual/range {v23 .. v24}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 886
    .restart local v14    # "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v14}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v11, v23, v24

    .line 887
    .restart local v11    # "maxSize":Ljava/lang/CharSequence;
    if-eqz v11, :cond_9

    .line 888
    const-string v23, "pref_camera_picturesize_key"

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .end local v11    # "maxSize":Ljava/lang/CharSequence;
    .end local v14    # "picSize":Lcom/android/camera/ListPreference;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 896
    :cond_a
    return-void

    .line 721
    .end local v3    # "advancedFeatures":Ljava/lang/String;
    .end local v4    # "autohdr":Ljava/lang/String;
    .end local v5    # "bokeh":Ljava/lang/String;
    .end local v6    # "chromaFlashOn":Ljava/lang/String;
    .end local v7    # "faceDetection":Ljava/lang/String;
    .end local v8    # "fssrOn":Ljava/lang/String;
    .end local v12    # "multiTouchFocusOn":Ljava/lang/String;
    .end local v13    # "optiZoomOn":Ljava/lang/String;
    .end local v17    # "reFocusOn":Ljava/lang/String;
    .end local v18    # "sceneMode":Ljava/lang/String;
    .end local v19    # "single_bokeh":Ljava/lang/String;
    .end local v20    # "truePortraitOn":Ljava/lang/String;
    .end local v21    # "ubiFocusOn":Ljava/lang/String;
    .end local v22    # "zsl":Ljava/lang/String;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 723
    .restart local v18    # "sceneMode":Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 725
    .restart local v7    # "faceDetection":Ljava/lang/String;
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 727
    .restart local v22    # "zsl":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 749
    .restart local v4    # "autohdr":Ljava/lang/String;
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 752
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 782
    .restart local v3    # "advancedFeatures":Ljava/lang/String;
    .restart local v6    # "chromaFlashOn":Ljava/lang/String;
    .restart local v8    # "fssrOn":Ljava/lang/String;
    .restart local v12    # "multiTouchFocusOn":Ljava/lang/String;
    .restart local v13    # "optiZoomOn":Ljava/lang/String;
    .restart local v17    # "reFocusOn":Ljava/lang/String;
    .restart local v20    # "truePortraitOn":Ljava/lang/String;
    .restart local v21    # "ubiFocusOn":Ljava/lang/String;
    :cond_11
    if-eqz v3, :cond_13

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 783
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 784
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 785
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 786
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 787
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 788
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 789
    :cond_12
    const-string v23, "pref_camera_focusmode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 790
    const-string v23, "pref_camera_flashmode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 791
    const-string v23, "pref_camera_ae_bracket_hdr_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 792
    const-string v23, "pref_camera_redeyereduction_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 793
    const-string v23, "pref_camera_exposure_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 794
    const-string v23, "pref_camera_coloreffect_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 795
    const-string v23, "pref_camera_touchafaec_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 796
    const-string v23, "pref_camera_scenemode_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 797
    const-string v23, "pref_camera_instant_capture_key"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 798
    const-string v23, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    sget-boolean v23, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v23, :cond_7

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-nez v23, :cond_7

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto/16 :goto_6

    .line 805
    :cond_13
    sget-boolean v23, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v23, :cond_7

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-nez v23, :cond_7

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto/16 :goto_6

    .line 817
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 821
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 855
    .restart local v5    # "bokeh":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto/16 :goto_9

    .line 861
    :cond_17
    const/16 v19, 0x0

    goto/16 :goto_a
.end method

.method public isMenuBeingAnimated()Z
    .locals 2

    .prologue
    .line 635
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuBeingShown()Z
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverMenu(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 602
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 606
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 608
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 609
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isOverPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 614
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v1

    .line 616
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 618
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 619
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 620
    const/4 v1, 0x1

    .line 621
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 623
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 625
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 626
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isPreviewMenuBeingAnimated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 643
    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewMenuBeingShown()Z
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListMenuTouched()V
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1564
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1565
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->closeView()V

    .line 306
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/PhotoMenu;->onPreferenceClicked(Lcom/android/camera/ListPreference;I)V

    .line 1527
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;I)V
    .locals 8
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1530
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1531
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_redeyereduction_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1532
    iget v3, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    .line 1533
    iget v3, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 1534
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->enableDeveloperMenu()V

    .line 1535
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1536
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1537
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_developer_menu_key"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1538
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "Camera developer option is enabled now"

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 1539
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1545
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1547
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListSubMenu;

    .line 1549
    .local v0, "basic":Lcom/android/camera/ui/ListSubMenu;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ListSubMenu;->initialize(Lcom/android/camera/ListPreference;I)V

    .line 1550
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListSubMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListSubMenu$Listener;)V

    .line 1551
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ListSubMenu;->setAlpha(F)V

    .line 1552
    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 1553
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1554
    iget v3, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v3, v6, :cond_2

    .line 1555
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1559
    :goto_1
    iput v6, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1560
    return-void

    .line 1542
    .end local v0    # "basic":Lcom/android/camera/ui/ListSubMenu;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iput v5, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    goto :goto_0

    .line 1557
    .restart local v0    # "basic":Lcom/android/camera/ui/ListSubMenu;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_1
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 18
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1619
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1620
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_hdr_key"

    .line 1621
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 1622
    .local v7, "hdrPref":Lcom/android/camera/ListPreference;
    if-eqz v7, :cond_0

    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v7, v15, v0}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1623
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    .end local v7    # "hdrPref":Lcom/android/camera/ListPreference;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0042

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1684
    .local v11, "refocusOn":Ljava/lang/String;
    const-string v15, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v11}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 1686
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 1687
    .local v9, "lp":Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1688
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1689
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1688
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    .end local v9    # "lp":Lcom/android/camera/ListPreference;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0044

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1695
    .local v10, "optizoomOn":Ljava/lang/String;
    const-string v15, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v10}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1696
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 1697
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 1698
    .restart local v9    # "lp":Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1699
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1700
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1699
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    .end local v9    # "lp":Lcom/android/camera/ListPreference;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0043

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1706
    .local v6, "chromaFlashOn":Ljava/lang/String;
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1707
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 1708
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 1709
    .restart local v9    # "lp":Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1710
    const-string v15, "chroma-flash"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1712
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1711
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    .end local v9    # "lp":Lcom/android/camera/ListPreference;
    :cond_3
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1717
    const-string v15, "pref_camera_coloreffect_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e00fe

    .line 1718
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0048

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1723
    .local v14, "stillMoreOn":Ljava/lang/String;
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1724
    const-string v15, "pref_camera_flashmode_key"

    const-string v16, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_auto_hdr_key"

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 1728
    .local v5, "autoHdrPref":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "enable"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1729
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/ui/CameraControls;->removeFromViewList(Landroid/view/View;)V

    .line 1734
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 1736
    const-string v15, "pref_camera_recordlocation_key"

    const-string v16, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1737
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->requestLocationPermission()V

    .line 1741
    :cond_6
    const-string v15, "pref_camera_bokeh_mode_key"

    const-string v16, "1"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "pref_asus_single_bokeh_mode_key"

    const-string v16, "1"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1743
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_scenemode_key"

    .line 1744
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 1745
    .local v12, "scene":Lcom/android/camera/ListPreference;
    check-cast v12, Lcom/android/camera/IconListPreference;

    .end local v12    # "scene":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1746
    const-string v15, "none"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1751
    :cond_8
    invoke-super/range {p0 .. p1}, Lcom/android/camera/MenuController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1752
    return-void

    .line 1625
    .end local v5    # "autoHdrPref":Lcom/android/camera/ListPreference;
    .end local v6    # "chromaFlashOn":Ljava/lang/String;
    .end local v10    # "optizoomOn":Ljava/lang/String;
    .end local v11    # "refocusOn":Ljava/lang/String;
    .end local v14    # "stillMoreOn":Ljava/lang/String;
    :cond_9
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1626
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_hdr_key"

    .line 1627
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 1628
    .restart local v7    # "hdrPref":Lcom/android/camera/ListPreference;
    if-eqz v7, :cond_0

    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v7, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1629
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1631
    .end local v7    # "hdrPref":Lcom/android/camera/ListPreference;
    :cond_a
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1632
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_scenemode_key"

    .line 1633
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 1634
    .local v13, "scenePref":Lcom/android/camera/ListPreference;
    if-eqz v13, :cond_b

    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1635
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object v15, v13

    .line 1637
    check-cast v15, Lcom/android/camera/IconListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1638
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    goto/16 :goto_0

    .line 1639
    .end local v13    # "scenePref":Lcom/android/camera/ListPreference;
    :cond_c
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1640
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_scenemode_key"

    .line 1641
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 1642
    .restart local v13    # "scenePref":Lcom/android/camera/ListPreference;
    if-eqz v13, :cond_d

    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1643
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :cond_d
    check-cast v13, Lcom/android/camera/IconListPreference;

    .end local v13    # "scenePref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    goto/16 :goto_0

    .line 1646
    :cond_e
    const-string v15, "pref_camera_ae_bracket_hdr_key"

    const-string v16, "Off"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1647
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0200

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 1648
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1649
    const-string v15, "pref_camera_flashmode_key"

    const-string v16, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1650
    :cond_f
    const-string v15, "pref_camera_flashmode_key"

    const-string v16, "Off"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_ae_bracket_hdr_key"

    .line 1652
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 1653
    .local v4, "aePref":Lcom/android/camera/ListPreference;
    const-string v15, "pref_camera_ae_bracket_hdr_key"

    const-string v16, "Off"

    move-object/from16 v0, v16

    invoke-static {v4, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1654
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0200

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 1655
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto/16 :goto_0

    .line 1657
    .end local v4    # "aePref":Lcom/android/camera/ListPreference;
    :cond_10
    const-string v15, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 1659
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 1660
    .local v3, "advancefeaturePref":Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_0

    .line 1661
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1662
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1661
    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e021c

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 1664
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1666
    :cond_11
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1667
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1666
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1669
    .end local v3    # "advancefeaturePref":Lcom/android/camera/ListPreference;
    :cond_12
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1670
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1669
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1671
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_longshot_key"

    .line 1672
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 1673
    .local v8, "longshotPref":Lcom/android/camera/ListPreference;
    if-eqz v8, :cond_0

    .line 1674
    const-string v15, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e021d

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 1676
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1678
    :cond_13
    const-string v15, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1732
    .end local v8    # "longshotPref":Lcom/android/camera/ListPreference;
    .restart local v5    # "autoHdrPref":Lcom/android/camera/ListPreference;
    .restart local v6    # "chromaFlashOn":Ljava/lang/String;
    .restart local v10    # "optizoomOn":Ljava/lang/String;
    .restart local v11    # "refocusOn":Ljava/lang/String;
    .restart local v14    # "stillMoreOn":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public openFirstLevel()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1488
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_2

    .line 1492
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1493
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 1494
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1495
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1499
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eq v0, v2, :cond_4

    .line 1502
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1503
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1505
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_0

    .line 1497
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 11
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 656
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v5, :cond_3

    .line 657
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_tnr_mode_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 658
    .local v3, "pref_tnr":Lcom/android/camera/ListPreference;
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 660
    .local v2, "pref_cds":Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "tnr":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "cds":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 664
    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    .line 667
    :cond_1
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0099

    invoke-virtual {v5, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 669
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v5, v8, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 670
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v8, v9, [Ljava/lang/String;

    const-string v9, "pref_camera_cds_mode_key"

    aput-object v9, v8, v7

    iget-object v9, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e0080

    .line 671
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 670
    invoke-virtual {v5, v8}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 672
    iput-boolean v6, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 673
    iget-boolean v5, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    if-nez v5, :cond_3

    .line 674
    if-eqz v0, :cond_2

    .line 675
    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    .line 677
    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    .line 688
    .end local v0    # "cds":Ljava/lang/String;
    .end local v2    # "pref_cds":Lcom/android/camera/ListPreference;
    .end local v3    # "pref_tnr":Lcom/android/camera/ListPreference;
    .end local v4    # "tnr":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_8

    .line 689
    aget-object v5, p1, v1

    const-string v8, "pref_camera_scenemode_key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 690
    iget-object v8, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p1, v5

    if-nez v5, :cond_7

    move v5, v6

    :goto_3
    invoke-direct {p0, v8, v5}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 688
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .end local v1    # "i":I
    .restart local v2    # "pref_cds":Lcom/android/camera/ListPreference;
    .restart local v3    # "pref_tnr":Lcom/android/camera/ListPreference;
    :cond_5
    move-object v4, v0

    .line 660
    goto :goto_0

    .line 679
    .restart local v0    # "cds":Ljava/lang/String;
    .restart local v4    # "tnr":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_3

    .line 680
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v5, v8, v6}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 681
    iget-boolean v5, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    if-eq v5, v0, :cond_3

    .line 682
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v8, v9, [Ljava/lang/String;

    const-string v9, "pref_camera_cds_mode_key"

    aput-object v9, v8, v7

    iget-object v9, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {v5, v8}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 683
    iput-boolean v7, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 684
    iput-boolean v7, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    goto :goto_1

    .end local v0    # "cds":Ljava/lang/String;
    .end local v2    # "pref_cds":Lcom/android/camera/ListPreference;
    .end local v3    # "pref_tnr":Lcom/android/camera/ListPreference;
    .end local v4    # "tnr":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_7
    move v5, v7

    .line 690
    goto :goto_3

    .line 693
    :cond_8
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->overrideSettings([Ljava/lang/String;)V

    .line 694
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-nez v5, :cond_9

    .line 695
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 696
    :cond_9
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 4
    .param p1, "dismissAll"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1509
    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1510
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1511
    iput v3, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1512
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1513
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 1520
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    goto :goto_0
.end method

.method public removeAllView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1568
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel1()V

    .line 1573
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1575
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->closeSceneMode()V

    .line 1576
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1577
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1608
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1609
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1610
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 1613
    :cond_0
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 344
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel2()V

    .line 346
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 348
    :cond_1
    return-void
.end method

.method public updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V
    .locals 4
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;

    .prologue
    .line 1338
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v1

    .line 1339
    .local v1, "thumbnails":[I
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    .line 1340
    .local v0, "ind":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1341
    const/4 v0, 0x0

    .line 1342
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1343
    return-void
.end method
