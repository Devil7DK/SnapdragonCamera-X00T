.class Lcom/android/camera/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SettingsActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v5, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-virtual {v5, p2}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 72
    .local v3, "p":Landroid/preference/Preference;
    if-nez v3, :cond_1

    .line 92
    .end local v3    # "p":Landroid/preference/Preference;
    :cond_0
    return-void

    .line 74
    .restart local v3    # "p":Landroid/preference/Preference;
    :cond_1
    instance-of v5, v3, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_5

    .line 75
    check-cast v3, Landroid/preference/SwitchPreference;

    .end local v3    # "p":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 76
    .local v0, "checked":Z
    if-eqz v0, :cond_4

    const-string v4, "on"

    .line 77
    .local v4, "value":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v5}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .end local v0    # "checked":Z
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v5, "pref_camera2_video_quality_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    iget-object v5, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    const-string v6, "pref_camera2_hfr_key"

    invoke-static {v5, v6}, Lcom/android/camera/SettingsActivity;->access$100(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V

    .line 84
    iget-object v5, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    const-string v6, "pref_camera2_videoencoder_key"

    invoke-static {v5, v6}, Lcom/android/camera/SettingsActivity;->access$100(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V

    .line 86
    :cond_3
    iget-object v5, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v5}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/camera/SettingsManager;->getDependentKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 87
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "dependentKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v6, v1}, Lcom/android/camera/SettingsActivity;->access$200(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 76
    .end local v1    # "dependentKey":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "checked":Z
    :cond_4
    const-string v4, "off"

    goto :goto_0

    .line 78
    .end local v0    # "checked":Z
    .restart local v3    # "p":Landroid/preference/Preference;
    :cond_5
    instance-of v5, v3, Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    .line 79
    check-cast v3, Landroid/preference/ListPreference;

    .end local v3    # "p":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 80
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v5}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
