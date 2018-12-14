.class Lcom/android/camera/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 149
    iput-object p1, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0}, Lcom/android/camera/SettingsActivity;->access$300(Lcom/android/camera/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0}, Lcom/android/camera/SettingsActivity;->access$408(Lcom/android/camera/SettingsActivity;)I

    .line 156
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0}, Lcom/android/camera/SettingsActivity;->access$400(Lcom/android/camera/SettingsActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0, v3}, Lcom/android/camera/SettingsActivity;->access$302(Lcom/android/camera/SettingsActivity;Z)Z

    .line 158
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0}, Lcom/android/camera/SettingsActivity;->access$500(Lcom/android/camera/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera2_developer_menu_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    const-string v1, "Camera developer option is enabled now"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/camera/SettingsActivity;->recreate()V

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera2_restore_default_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0}, Lcom/android/camera/SettingsActivity;->access$600(Lcom/android/camera/SettingsActivity;)V

    .line 170
    :cond_1
    return v2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$3;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0, v2}, Lcom/android/camera/SettingsActivity;->access$402(Lcom/android/camera/SettingsActivity;I)I

    goto :goto_0
.end method
