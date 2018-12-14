.class public Lcom/android/camera/VideoMenu;
.super Lcom/android/camera/MenuController;
.source "VideoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/ListMenu$Listener;
.implements Lcom/android/camera/ui/ListSubMenu$Listener;
.implements Lcom/android/camera/ui/TimeIntervalPopup$Listener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final CLICK_THRESHOLD:I = 0xc8

.field private static final MODE_FILTER:I = 0x1

.field private static final PERSIST_4K_NO_LIMIT:Z

.field private static final POPUP_FIRST_LEVEL:I = 0x1

.field private static final POPUP_IN_ANIMATION_FADE:I = 0x4

.field private static final POPUP_IN_ANIMATION_SLIDE:I = 0x3

.field private static final POPUP_NONE:I = 0x0

.field private static final POPUP_SECOND_LEVEL:I = 0x2

.field private static final PREVIEW_MENU_IN_ANIMATION:I = 0x1

.field private static final PREVIEW_MENU_NONE:I = 0x0

.field private static final PREVIEW_MENU_ON:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mIsVideoCDSUpdated:Z

.field private mIsVideoTNREnabled:Z

.field private mListMenu:Lcom/android/camera/ui/ListMenu;

.field private mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

.field private mOtherKeys1:[Ljava/lang/String;

.field private mOtherKeys2:[Ljava/lang/String;

.field private mPopupStatus:I

.field private mPrevSavedVideoCDS:Ljava/lang/String;

.field private mPreviewMenu:Landroid/view/View;

.field private mPreviewMenuStatus:I

.field private mSceneStatus:I

.field private mUI:Lcom/android/camera/VideoUI;

.field private previewMenuSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "VideoMenu"

    sput-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    .line 98
    const-string v0, "persist.camcorder.4k.nolimit"

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/VideoMenu;->PERSIST_4K_NO_LIMIT:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoUI;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/VideoUI;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/camera/MenuController;-><init>(Landroid/app/Activity;)V

    .line 92
    iput-boolean v0, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    .line 103
    iput-object p2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    .line 104
    iput-object p1, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 105
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    .line 106
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/VideoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/VideoMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/VideoMenu;->previewMenuSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/camera/VideoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    return-void
.end method

.method private animateFadeOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x4

    .line 190
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 194
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 195
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 196
    new-instance v1, Lcom/android/camera/VideoMenu$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/VideoMenu$1;-><init>(Lcom/android/camera/VideoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x1

    .line 391
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    if-ne v1, v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 397
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 402
    :goto_1
    new-instance v1, Lcom/android/camera/VideoMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoMenu$3;-><init>(Lcom/android/camera/VideoMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 424
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 400
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

    .line 239
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 243
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 244
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x1

    .line 245
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 277
    :goto_1
    new-instance v1, Lcom/android/camera/VideoMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/VideoMenu$2;-><init>(Lcom/android/camera/VideoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 316
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 248
    :sswitch_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 251
    :sswitch_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 254
    :sswitch_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 257
    :sswitch_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 263
    :sswitch_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 266
    :sswitch_5
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 269
    :sswitch_6
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 272
    :sswitch_7
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 261
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method private changeFilterModeControlIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 665
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 666
    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    const-string p1, "Off"

    .line 671
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_filter_mode_key"

    .line 672
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 673
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v2, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    .line 675
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 676
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    .end local v0    # "index":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "pref":Lcom/android/camera/IconListPreference;
    :cond_0
    return-void

    .line 669
    :cond_1
    const-string p1, "On"

    goto :goto_0
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 974
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

.method private overrideMenuFor16mp()V
    .locals 8

    .prologue
    .line 736
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cameraModuleInfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 737
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "line_one":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "line_two":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 741
    if-eqz v0, :cond_0

    .line 742
    const-string v3, "ov16885"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 743
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_dis_key"

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 745
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v4, "pref_camera_dis_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 747
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pref_camera_dis_key"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "disable"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 749
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v4, "pref_camera_see_more_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 751
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pref_camera_see_more_key"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e00e2

    .line 752
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 751
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 759
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-void

    .line 754
    .restart local v0    # "line_one":Ljava/lang/String;
    .restart local v1    # "line_two":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    sget-object v3, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private overrideMenuFor4K()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 717
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->is4KEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/VideoMenu;->PERSIST_4K_NO_LIMIT:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_dis_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 721
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_dis_key"

    aput-object v2, v1, v3

    const-string v2, "disable"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_see_more_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 726
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_see_more_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00e2

    .line 727
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 726
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method private overrideMenuForCDSMode()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 784
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_video_tnr_mode_key"

    .line 785
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 786
    .local v2, "pref_tnr":Lcom/android/camera/ListPreference;
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_video_cds_mode_key"

    .line 787
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 788
    .local v1, "pref_cds":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "tnr":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "cds":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 792
    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 795
    :cond_1
    if-eqz v3, :cond_5

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 796
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v5, "pref_camera_video_cds_mode_key"

    invoke-virtual {v4, v5, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 798
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_camera_video_cds_mode_key"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0086

    .line 800
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 798
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 801
    iput-boolean v8, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 802
    iget-boolean v4, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    if-nez v4, :cond_3

    .line 803
    if-eqz v0, :cond_2

    .line 804
    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 806
    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    .line 819
    :cond_3
    :goto_1
    return-void

    .end local v0    # "cds":Ljava/lang/String;
    .end local v3    # "tnr":Ljava/lang/String;
    :cond_4
    move-object v3, v0

    .line 788
    goto :goto_0

    .line 808
    .restart local v0    # "cds":Ljava/lang/String;
    .restart local v3    # "tnr":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_3

    .line 809
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v5, "pref_camera_video_cds_mode_key"

    invoke-virtual {v4, v5, v8}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 811
    iget-boolean v4, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    if-eqz v4, :cond_3

    .line 812
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_camera_video_cds_mode_key"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 814
    iput-boolean v7, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 815
    iput-boolean v7, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    goto :goto_1
.end method

.method private overrideMenuForLocation()V
    .locals 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_recordlocation_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 715
    :cond_0
    return-void
.end method

.method private overrideMenuForSeeMore()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 763
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_see_more_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 764
    .local v0, "pref_SeeMore":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_video_cds_mode_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 768
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_video_tnr_mode_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 770
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_noise_reduction_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 772
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_camera_video_cds_mode_key"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0086

    .line 774
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pref_camera_video_tnr_mode_key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e008f

    .line 776
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pref_camera_noise_reduction_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00db

    .line 778
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 772
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 780
    :cond_0
    return-void
.end method

.method private overrideMenuForVideoHighFrameRate()V
    .locals 19

    .prologue
    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_dis_key"

    .line 823
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 824
    .local v4, "disPref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_video_time_lapse_frame_interval_key"

    .line 825
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 826
    .local v5, "frameIntervalPref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_video_hdr_key"

    .line 827
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    .line 828
    .local v15, "videoHDRPref":Lcom/android/camera/ListPreference;
    if-nez v4, :cond_5

    const-string v3, "disable"

    .line 829
    .local v3, "disMode":Ljava/lang/String;
    :goto_0
    if-nez v15, :cond_6

    const-string v14, "off"

    .line 830
    .local v14, "videoHDR":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 832
    .local v13, "timeLapseInterval":I
    const-string v16, "persist.camcorder.eis.maxfps"

    const/16 v17, 0x1e

    .line 833
    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 834
    .local v2, "PERSIST_EIS_MAX_FPS":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_hfr_key"

    .line 835
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 837
    .local v7, "hfrPref":Lcom/android/camera/ListPreference;
    if-nez v7, :cond_7

    .line 839
    const-string v9, "     "

    .line 843
    .local v9, "highFrameRate":Ljava/lang/String;
    :goto_2
    const-string v16, "hfr"

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 844
    .local v10, "isHFR":Z
    const-string v16, "hsr"

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 845
    .local v11, "isHSR":Z
    const/4 v12, 0x0

    .line 846
    .local v12, "rate":I
    if-nez v10, :cond_0

    if-eqz v11, :cond_1

    .line 847
    :cond_0
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 848
    .local v8, "hfrRate":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 851
    .end local v8    # "hfrRate":Ljava/lang/String;
    :cond_1
    const-string v16, "enable"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    if-gt v12, v2, :cond_3

    :cond_2
    const-string v16, "off"

    .line 852
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    if-eqz v13, :cond_4

    .line 854
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_hfr_key"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 857
    :cond_4
    return-void

    .line 828
    .end local v2    # "PERSIST_EIS_MAX_FPS":I
    .end local v3    # "disMode":Ljava/lang/String;
    .end local v6    # "frameIntervalStr":Ljava/lang/String;
    .end local v7    # "hfrPref":Lcom/android/camera/ListPreference;
    .end local v9    # "highFrameRate":Ljava/lang/String;
    .end local v10    # "isHFR":Z
    .end local v11    # "isHSR":Z
    .end local v12    # "rate":I
    .end local v13    # "timeLapseInterval":I
    .end local v14    # "videoHDR":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 829
    .restart local v3    # "disMode":Ljava/lang/String;
    :cond_6
    invoke-virtual {v15}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 841
    .restart local v2    # "PERSIST_EIS_MAX_FPS":I
    .restart local v6    # "frameIntervalStr":Ljava/lang/String;
    .restart local v7    # "hfrPref":Lcom/android/camera/ListPreference;
    .restart local v13    # "timeLapseInterval":I
    .restart local v14    # "videoHDR":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "highFrameRate":Ljava/lang/String;
    goto :goto_2
.end method

.method private overridePreferenceAccessibility()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForLocation()V

    .line 700
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuFor4K()V

    .line 704
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForCDSMode()V

    .line 705
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForSeeMore()V

    .line 706
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForVideoHighFrameRate()V

    .line 707
    return-void
.end method


# virtual methods
.method public addFilterMode()V
    .locals 32

    .prologue
    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera_coloreffect_key"

    .line 561
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    check-cast v20, Lcom/android/camera/IconListPreference;

    .line 562
    .local v20, "pref":Lcom/android/camera/IconListPreference;
    if-nez v20, :cond_0

    .line 662
    :goto_0
    return-void

    .line 565
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v23

    .line 566
    .local v23, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v17

    .line 567
    .local v17, "mIsDefaultToPortrait":Z
    if-nez v17, :cond_1

    .line 568
    add-int/lit8 v29, v23, 0x5a

    move/from16 v0, v29

    rem-int/lit16 v0, v0, 0x168

    move/from16 v23, v0

    .line 570
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const-string v30, "window"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 571
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 572
    .local v5, "display":Landroid/view/Display;
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 574
    .local v6, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 575
    .local v22, "r":Landroid/content/res/Resources;
    const v29, 0x7f0c0086

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x7f0c0088

    .line 576
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

    .line 577
    .local v8, "height":I
    const v29, 0x7f0c0087

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x7f0c0088

    .line 578
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

    .line 580
    .local v27, "width":I
    const/4 v7, 0x0

    .line 581
    .local v7, "gridRes":I
    if-eqz v23, :cond_2

    const/16 v29, 0xb4

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    :cond_2
    const/16 v19, 0x1

    .line 582
    .local v19, "portrait":Z
    :goto_1
    move/from16 v24, v8

    .line 583
    .local v24, "size":I
    if-eqz v19, :cond_5

    .line 584
    const v7, 0x7f040045

    .line 585
    move/from16 v24, v27

    .line 589
    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoMenu;->previewMenuSize:I

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->hideUI()V

    .line 591
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 592
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoMenu;->mSceneStatus:I

    .line 594
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v25

    .line 596
    .local v25, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 598
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 601
    .local v4, "basic":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->dismissSceneModeMenu()V

    .line 602
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 603
    .local v21, "previewMenuLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 604
    const/16 v18, 0x0

    .line 605
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v19, :cond_6

    .line 606
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v29, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 607
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 615
    :goto_3
    new-instance v29, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-direct/range {v29 .. v31}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    const v29, 0x7f0d0062

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 619
    .local v15, "layout":Landroid/widget/LinearLayout;
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v26, v0

    .line 620
    .local v26, "views":[Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v12

    .line 621
    .local v12, "init":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_7

    .line 622
    const v29, 0x7f040011

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/RotateLayout;

    .line 625
    .local v16, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v29, 0x7f0d0053

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 626
    .local v10, "imageView":Landroid/widget/ImageView;
    move v13, v9

    .line 628
    .local v13, "j":I
    new-instance v29, Lcom/android/camera/VideoMenu$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/camera/VideoMenu$6;-><init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 652
    aput-object v10, v26, v13

    .line 653
    if-ne v9, v12, :cond_3

    .line 654
    const v29, -0xcc4a1b

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 655
    :cond_3
    const v29, 0x7f0d0061

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 656
    .local v14, "label":Landroid/widget/TextView;
    aget v29, v25, v9

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    aget-object v29, v6, v9

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 581
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

    .line 587
    .restart local v19    # "portrait":Z
    .restart local v24    # "size":I
    :cond_5
    const v7, 0x7f040012

    goto/16 :goto_2

    .line 610
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

    .line 611
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 613
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

    .line 660
    .restart local v9    # "i":I
    .restart local v12    # "init":I
    .restart local v15    # "layout":Landroid/widget/LinearLayout;
    .restart local v26    # "views":[Landroid/view/View;
    :cond_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public addModeBack()V
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/android/camera/VideoMenu;->mSceneStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->addFilterMode()V

    .line 557
    :cond_0
    return-void
.end method

.method public animateFadeIn(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 321
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 322
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 323
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "adjustOrientation"    # Z

    .prologue
    .line 326
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    .line 327
    .local v1, "orientation":I
    if-nez p3, :cond_0

    .line 328
    const/4 v1, 0x0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 332
    .local v2, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v3, 0x1

    .line 333
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 334
    sparse-switch v1, :sswitch_data_0

    .line 381
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 382
    return-void

    .line 336
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 337
    .local v0, "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 338
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 341
    .end local v0    # "dest":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 342
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 343
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 346
    .end local v0    # "dest":F
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 347
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 348
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 351
    .end local v0    # "dest":F
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 352
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 353
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 357
    .end local v0    # "dest":F
    :cond_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 359
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 360
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 361
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 364
    .end local v0    # "dest":F
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 365
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 366
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 369
    .end local v0    # "dest":F
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 370
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 371
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 374
    .end local v0    # "dest":F
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 375
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 376
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 357
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
    .line 385
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public closeAllView()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 961
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->animateSlideOutPreviewMenu()V

    .line 962
    return-void
.end method

.method public closeSceneMode()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeSceneModeMenu()V

    .line 177
    return-void
.end method

.method public closeView()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 970
    :cond_1
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public handleBackKey()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 160
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    if-ne v1, v2, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/view/View;)V

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-nez v1, :cond_2

    .line 165
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_2
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v0, :cond_3

    .line 167
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 168
    :cond_3
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/VideoMenu;->animateFadeOut(Landroid/widget/ListView;I)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v1}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    goto :goto_0
.end method

.method public hideUI()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 909
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 911
    return-void
.end method

.method public initFilterModeButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 531
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_coloreffect_key"

    .line 533
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 534
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    new-instance v1, Lcom/android/camera/VideoMenu$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoMenu$5;-><init>(Lcom/android/camera/VideoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initSwitchItem(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "switcher"    # Landroid/view/View;

    .prologue
    .line 476
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 477
    invoke-virtual {v4, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 478
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    if-nez v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 482
    .local v0, "iconIds":[I
    const/4 v3, -0x1

    .line 483
    .local v3, "resid":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 484
    .local v1, "index":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 485
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 489
    aget v3, v0, v1

    :goto_1
    move-object v4, p2

    .line 494
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v4, Lcom/android/camera/VideoMenu$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/VideoMenu$4;-><init>(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v3

    goto :goto_1
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 8
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 113
    iput v3, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 114
    iput v3, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 115
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoMenu;->initFilterModeButton(Landroid/view/View;)V

    .line 117
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_video_flashmode_key"

    aput-object v1, v0, v3

    const-string v1, "pref_video_quality_key"

    aput-object v1, v0, v4

    const-string v1, "pref_camera_video_duration_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v6

    const-string v1, "pref_camera_savepath_key"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_dis_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 132
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_video_flashmode_key"

    aput-object v1, v0, v3

    const-string v1, "pref_video_quality_key"

    aput-object v1, v0, v4

    const-string v1, "pref_camera_video_duration_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v6

    const-string v1, "pref_camera_savepath_key"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_facedetection_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_hfr_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_camera_see_more_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_camera_noise_reduction_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_camera_dis_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pref_video_effect_key"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_camera_videoencoder_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pref_camera_audioencoder_key"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pref_camera_video_hdr_key"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pref_camera_powermode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_camera_video_rotation_key"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pref_camera_video_cds_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_camera_video_tnr_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_camera_videosnapsize_key"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pref_camera_zoom_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 156
    const-string v0, "pref_camera_id_key"

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 157
    return-void
.end method

.method protected initializePopup()V
    .locals 6

    .prologue
    .line 878
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 881
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040016

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ListMenu;

    .line 883
    .local v2, "popup1":Lcom/android/camera/ui/ListMenu;
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ListMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListMenu$Listener;)V

    .line 884
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 885
    .local v1, "keys":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 887
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/ui/ListMenu;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 889
    iput-object v2, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 891
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overridePreferenceAccessibility()V

    .line 892
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForVideoHighFrameRate()V

    .line 893
    return-void
.end method

.method public isMenuBeingAnimated()Z
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

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
    .line 452
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

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

    .line 428
    iget v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 434
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 435
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 436
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

    .line 440
    iget v2, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 446
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 447
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 448
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

    .line 464
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

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
    .line 460
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

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
    .line 951
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 952
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 953
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/android/camera/VideoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 874
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->closeView()V

    .line 875
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/VideoMenu;->onPreferenceClicked(Lcom/android/camera/ListPreference;I)V

    .line 927
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;I)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 933
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 936
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListSubMenu;

    .line 938
    .local v0, "basic":Lcom/android/camera/ui/ListSubMenu;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ListSubMenu;->initialize(Lcom/android/camera/ListPreference;I)V

    .line 939
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListSubMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListSubMenu$Listener;)V

    .line 940
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 941
    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 942
    iget v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v2, v5, :cond_0

    .line 943
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 947
    :goto_0
    iput v5, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 948
    return-void

    .line 945
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    const v7, 0x7f0e035f

    const v6, 0x7f0e00b0

    const/4 v5, 0x1

    .line 980
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 981
    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 980
    invoke-static {p1, v3, v4}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 982
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_hfr_key"

    .line 983
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 984
    .local v1, "hfrPref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    const-string v3, "off"

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 985
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3, v6, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 986
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 988
    :cond_0
    const-string v3, "pref_camera_hfr_key"

    const-string v4, "off"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    .end local v1    # "hfrPref":Lcom/android/camera/ListPreference;
    :cond_1
    const-string v3, "pref_camera_hfr_key"

    const-string v4, "off"

    invoke-static {p1, v3, v4}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 991
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 992
    invoke-virtual {v3, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "defaultValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    .line 994
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 995
    .local v2, "lapsePref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 996
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3, v6, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 997
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 999
    :cond_2
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v2    # "lapsePref":Lcom/android/camera/ListPreference;
    :cond_3
    const-string v3, "pref_camera_recordlocation_key"

    const-string v4, "off"

    invoke-static {p1, v3, v4}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1003
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->requestLocationPermission()V

    .line 1007
    :cond_4
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1008
    return-void
.end method

.method public openFirstLevel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 681
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eq v0, v2, :cond_3

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 685
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 861
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->overrideSettings([Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-nez v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 867
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 868
    return-void

    .line 865
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overridePreferenceAccessibility()V

    goto :goto_0
.end method

.method public popupDismissed(Z)V
    .locals 4
    .param p1, "topPopupOnly"    # Z

    .prologue
    const/4 v3, 0x1

    .line 897
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 898
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 899
    iput v3, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 900
    if-eqz p1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    goto :goto_0
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 692
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->reloadPreferences()V

    .line 696
    :cond_0
    return-void
.end method

.method public showUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 914
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 915
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_filter_mode_key"

    .line 916
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 917
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    .line 918
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 920
    :cond_0
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 183
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel2()V

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 187
    :cond_1
    return-void
.end method
