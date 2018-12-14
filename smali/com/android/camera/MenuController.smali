.class public Lcom/android/camera/MenuController;
.super Ljava/lang/Object;
.source "MenuController.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/IconListPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field protected mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/IconListPreference;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/IconListPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "CAM_menucontrol"

    sput-object v0, Lcom/android/camera/MenuController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/camera/MenuController;->mActivity:Landroid/app/Activity;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuController;->mPreferences:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuController;->mPreferenceMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuController;->mOverrides:Ljava/util/Map;

    .line 59
    return-void
.end method

.method private varargs override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;
    .param p2, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 122
    iget-object v3, p0, Lcom/android/camera/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 124
    aget-object v1, p2, v0

    .line 125
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p2, v3

    .line 126
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/camera/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/MenuController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 132
    return-void

    .line 123
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/camera/MenuController;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/MenuController;->mPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/android/camera/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/MenuController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/MenuController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 72
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 113
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuController;->mPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 117
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    invoke-direct {p0, v0, p1}, Lcom/android/camera/MenuController;->override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "pref":Lcom/android/camera/IconListPreference;
    :cond_1
    return-void
.end method

.method protected reloadPreference(Lcom/android/camera/IconListPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;

    .prologue
    .line 91
    iget-object v3, p0, Lcom/android/camera/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 92
    .local v2, "switcher":Landroid/view/View;
    if-nez v2, :cond_0

    .line 109
    .end local v2    # "switcher":Landroid/view/View;
    :goto_0
    return-void

    .line 94
    .restart local v2    # "switcher":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "overrideValue":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "index":I
    :cond_1
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "switcher":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    .end local v0    # "index":I
    .restart local v2    # "switcher":Landroid/view/View;
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 100
    .restart local v0    # "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 102
    sget-object v3, Lcom/android/camera/MenuController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to find override value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/camera/MenuController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 85
    iget-object v1, p0, Lcom/android/camera/MenuController;->mPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 86
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {p0, v0}, Lcom/android/camera/MenuController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    goto :goto_0

    .line 88
    .end local v0    # "pref":Lcom/android/camera/IconListPreference;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/MenuController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 52
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/MenuController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 81
    return-void
.end method
