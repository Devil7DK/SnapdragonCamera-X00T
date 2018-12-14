.class public Lcom/android/camera/TsMakeupManager;
.super Ljava/lang/Object;
.source "TsMakeupManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TsMakeupManager$MakeupLevelListener;
    }
.end annotation


# static fields
.field private static final CLICK_THRESHOLD:I = 0xc8

.field public static final HAS_TS_MAKEUP:Z

.field public static final MAKEUP_NONE:Ljava/lang/String; = "none"

.field public static final MAKEUP_OFF:Ljava/lang/String; = "Off"

.field public static final MAKEUP_ON:Ljava/lang/String; = "On"

.field private static final MAKEUP_UI_STATUS_DISMISS:I = 0x3

.field private static final MAKEUP_UI_STATUS_NONE:I = 0x0

.field private static final MAKEUP_UI_STATUS_OFF:I = 0x2

.field private static final MAKEUP_UI_STATUS_ON:I = 0x1

.field private static final MODE_CLEAN:I = 0x2

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_WHITEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TsMakeupManager"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

.field private mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

.field private mMakeupLevelRoot:Landroid/widget/LinearLayout;

.field private mMakeupSingleRoot:Landroid/widget/LinearLayout;

.field private mMakeupUIStatus:I

.field private mMenu:Lcom/android/camera/PhotoMenu;

.field private mMode:I

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mSingleSelectedIndex:I

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mUI:Lcom/android/camera/PhotoUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "persist.ts.rtmakeup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoMenu;Lcom/android/camera/PhotoUI;Lcom/android/camera/PreferenceGroup;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "menu"    # Lcom/android/camera/PhotoMenu;
    .param p3, "ui"    # Lcom/android/camera/PhotoUI;
    .param p4, "preferenceGroup"    # Lcom/android/camera/PreferenceGroup;
    .param p5, "makeupSwitcher"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v2, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    .line 67
    iput v2, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    .line 73
    iput v2, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 89
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 90
    iput-object p3, p0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    .line 91
    iput-object p2, p0, Lcom/android/camera/TsMakeupManager;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 92
    iput-object p4, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 93
    iput-object p5, p0, Lcom/android/camera/TsMakeupManager;->mTsMakeupSwitcher:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    .line 97
    iput v2, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->changeMakeupIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/TsMakeupManager;)Lcom/android/camera/TsMakeupManager$MakeupLevelListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->showSingleView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/TsMakeupManager;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/TsMakeupManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/TsMakeupManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/TsMakeupManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/TsMakeupManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/TsMakeupManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/TsMakeupManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->getPrefValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/TsMakeupManager;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->setSingleView(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private changeMakeupIcon(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    const-string v3, "On"

    .line 137
    .local v3, "prefValue":Ljava/lang/String;
    const-string v4, "Off"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const-string v3, "Off"

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_tsmakeup_key"

    .line 141
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 142
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    if-nez v2, :cond_2

    .line 150
    .end local v2    # "pref":Lcom/android/camera/IconListPreference;
    .end local v3    # "prefValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 144
    .restart local v2    # "pref":Lcom/android/camera/IconListPreference;
    .restart local v3    # "prefValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    .line 146
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mTsMakeupSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 147
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPrefValue(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 478
    .local v0, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "value":Ljava/lang/String;
    const-string v2, "TsMakeupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TsMakeupManager.getPrefValue(): value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0226

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private setEffectValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 469
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/TsMakeupManager$MakeupLevelListener;->onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSeekbarValue(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 459
    const-string v0, "pref_camera_tsmakeup_whiten"

    .line 460
    .local v0, "key":Ljava/lang/String;
    iget v1, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 461
    const-string v0, "pref_camera_tsmakeup_clean"

    .line 463
    :cond_0
    const-string v1, "TsMakeupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TsMakeupManager.onStopTrackingTouch(): value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/TsMakeupManager;->setEffectValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private setSingleView(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const v5, 0x7f0d00f2

    const v4, 0x7f0d00f0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 435
    iget v0, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    if-ne v0, v2, :cond_1

    .line 436
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 437
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget v0, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 439
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 440
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private showSingleView(Ljava/lang/String;)V
    .locals 20
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v17, "none"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 346
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 348
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v12

    .line 350
    .local v12, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v8

    .line 351
    .local v8, "mIsDefaultToPortrait":Z
    if-nez v8, :cond_1

    .line 352
    add-int/lit8 v17, v12, 0x5a

    move/from16 v0, v17

    rem-int/lit16 v12, v0, 0x168

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 356
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 357
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 358
    .local v15, "width":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 359
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 360
    .local v10, "r":Landroid/content/res/Resources;
    const v17, 0x7f0c008a

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 361
    .local v9, "margin":I
    const v17, 0x7f0c008b

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 363
    .local v7, "levelBgSize":I
    const-string v17, "TsMakeupManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TsMakeupManager.showSingleView(): rotation is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", WH is ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), margin is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", levelBgSize is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const v3, 0x7f040043

    .line 367
    .local v3, "gridRes":I
    move v14, v15

    .line 369
    .local v14, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 371
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 372
    .local v6, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/camera/PhotoUI;->setMakeupMenuLayout(Landroid/widget/LinearLayout;)V

    .line 375
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-direct {v11, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 376
    .local v11, "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const v17, 0x7f0d00ec

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/SeekBar;

    .line 380
    .local v13, "seekBar":Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/camera/TsMakeupManager;->setSingleView(Landroid/widget/LinearLayout;)V

    .line 383
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/TsMakeupManager;->mMode:I

    .line 385
    const v17, 0x7f0d00ed

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/android/camera/TsMakeupManager$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/TsMakeupManager$2;-><init>(Lcom/android/camera/TsMakeupManager;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    const v17, 0x7f0d00f1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/android/camera/TsMakeupManager$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v6}, Lcom/android/camera/TsMakeupManager$3;-><init>(Lcom/android/camera/TsMakeupManager;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v17, 0x7f0d00ef

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/android/camera/TsMakeupManager$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v6}, Lcom/android/camera/TsMakeupManager$4;-><init>(Lcom/android/camera/TsMakeupManager;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "gridRes":I
    .end local v4    # "height":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "layout":Landroid/widget/LinearLayout;
    .end local v7    # "levelBgSize":I
    .end local v8    # "mIsDefaultToPortrait":Z
    .end local v9    # "margin":I
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "rotation":I
    .end local v13    # "seekBar":Landroid/widget/SeekBar;
    .end local v14    # "size":I
    .end local v15    # "width":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_2
    return-void
.end method


# virtual methods
.method public dismissMakeupUI()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/TsMakeupManager;->removeAllViews()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public getMakeupLayoutRoot()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hideMakeupUI()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 153
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_tsmakeup_key"

    .line 154
    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 155
    .local v3, "pref":Lcom/android/camera/IconListPreference;
    if-nez v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iput v9, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 158
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "tsMakeupOn":Ljava/lang/String;
    const-string v6, "TsMakeupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TsMakeupManager.hideMakeupUI(): tsMakeupOn is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v6, "On"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "index":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 163
    .local v5, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v6, v0, 0x1

    array-length v7, v5

    rem-int v0, v6, v7

    .line 164
    aget-object v6, v5, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/camera/IconListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mTsMakeupSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 166
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    const-string v7, "pref_camera_tsmakeup_level_key"

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/camera/TsMakeupManager$MakeupLevelListener;->onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_tsmakeup_level_key"

    .line 170
    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 171
    .local v2, "levelPref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v2, v9}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 174
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 176
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    .line 177
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 178
    iput-object v10, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 180
    :cond_2
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 181
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    iput-object v10, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    goto/16 :goto_0
.end method

.method public isShowMakeup()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 446
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 451
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/TsMakeupManager;->setSeekbarValue(I)V

    .line 456
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 111
    iput-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 115
    iput-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 120
    :cond_2
    return-void
.end method

.method public resetMakeupUIStatus()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 132
    return-void
.end method

.method public setMakeupLevelListener(Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 86
    return-void
.end method

.method public showMakeupView()V
    .locals 35

    .prologue
    .line 188
    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 197
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 200
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v32

    if-nez v32, :cond_3

    .line 201
    const-string v32, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/camera/TsMakeupManager;->showSingleView(Ljava/lang/String;)V

    .line 340
    :cond_2
    :goto_0
    return-void

    .line 205
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v32, v0

    const-string v33, "pref_camera_tsmakeup_level_key"

    .line 210
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v23

    check-cast v23, Lcom/android/camera/IconListPreference;

    .line 211
    .local v23, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v23, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 216
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 218
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 220
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v26

    .line 223
    .local v26, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v19

    .line 224
    .local v19, "mIsDefaultToPortrait":Z
    if-nez v19, :cond_5

    .line 225
    add-int/lit8 v32, v26, 0x5a

    move/from16 v0, v32

    rem-int/lit16 v0, v0, 0x168

    move/from16 v26, v0

    .line 227
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 228
    .local v6, "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v28

    .line 230
    .local v28, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const-string v33, "window"

    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/WindowManager;

    .line 231
    .local v31, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 232
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v30

    .line 233
    .local v30, "width":I
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 234
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 235
    .local v24, "r":Landroid/content/res/Resources;
    const v32, 0x7f0c008a

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v20, v0

    .line 236
    .local v20, "margin":I
    const v32, 0x7f0c008b

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v18, v0

    .line 238
    .local v18, "levelBgSize":I
    const-string v32, "TsMakeupManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TsMakeupManager.showMakeupView(): rotation is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", WH is ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "), margin is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", levelBgSize is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, "gridRes":I
    if-eqz v26, :cond_6

    const/16 v32, 0xb4

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    :cond_6
    const/16 v22, 0x1

    .line 243
    .local v22, "portrait":Z
    :goto_1
    move/from16 v27, v8

    .line 244
    .local v27, "size":I
    if-eqz v22, :cond_a

    .line 245
    const v7, 0x7f040042

    .line 246
    move/from16 v27, v30

    .line 251
    :goto_2
    array-length v0, v6

    move/from16 v32, v0

    div-int v13, v27, v32

    .line 253
    .local v13, "itemWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const-string v33, "layout_inflater"

    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 255
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 256
    .local v16, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setMakeupMenuLayout(Landroid/widget/LinearLayout;)V

    .line 259
    const/16 v21, 0x0

    .line 260
    .local v21, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v22, :cond_b

    .line 261
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    .end local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .restart local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 268
    :goto_3
    const/16 v25, 0x0

    .line 269
    .local v25, "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v26, :cond_c

    .line 270
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 272
    .restart local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0xc

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    :cond_7
    :goto_4
    array-length v0, v6

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v29, v0

    .line 288
    .local v29, "views":[Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v12

    .line 289
    .local v12, "init":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    array-length v0, v6

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v9, v0, :cond_f

    .line 290
    const v32, 0x7f040040

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ui/RotateLayout;

    .line 293
    .local v17, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v32, 0x7f0d0053

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 294
    .local v10, "imageView":Landroid/widget/ImageView;
    const v32, 0x7f0d0061

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 295
    .local v15, "label":Landroid/widget/TextView;
    move v14, v9

    .line 297
    .local v14, "j":I
    new-instance v32, Lcom/android/camera/TsMakeupManager$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/camera/TsMakeupManager$1;-><init>(Lcom/android/camera/TsMakeupManager;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 330
    const v32, 0x7f0d0053

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 331
    .local v4, "border":Landroid/view/View;
    aput-object v4, v29, v14

    .line 332
    if-ne v9, v12, :cond_8

    .line 333
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 335
    :cond_8
    aget v32, v28, v9

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    aget-object v32, v6, v9

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 242
    .end local v4    # "border":Landroid/view/View;
    .end local v9    # "i":I
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "init":I
    .end local v13    # "itemWidth":I
    .end local v14    # "j":I
    .end local v15    # "label":Landroid/widget/TextView;
    .end local v16    # "layout":Landroid/widget/LinearLayout;
    .end local v17    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "portrait":Z
    .end local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v27    # "size":I
    .end local v29    # "views":[Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 248
    .restart local v22    # "portrait":Z
    .restart local v27    # "size":I
    :cond_a
    const v7, 0x7f040041

    .line 249
    move/from16 v27, v8

    goto/16 :goto_2

    .line 264
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v13    # "itemWidth":I
    .restart local v16    # "layout":Landroid/widget/LinearLayout;
    .restart local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    .end local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 265
    .restart local v21    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_3

    .line 273
    .restart local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_c
    const/16 v32, 0x5a

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 274
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 276
    .restart local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0xb

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    .line 277
    :cond_d
    const/16 v32, 0xb4

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 278
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .restart local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0xa

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    .line 281
    :cond_e
    const/16 v32, 0x10e

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 282
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .restart local v25    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0x9

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    .line 339
    .restart local v9    # "i":I
    .restart local v12    # "init":I
    .restart local v29    # "views":[Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
