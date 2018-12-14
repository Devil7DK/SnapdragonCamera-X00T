.class Lcom/android/camera/PhotoMenu$6;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->initSingleBokehModeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$pref:Lcom/android/camera/IconListPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$6;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$6;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1067
    iget-object v4, p0, Lcom/android/camera/PhotoMenu$6;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v4, v4, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_asus_single_bokeh_mode_key"

    .line 1068
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1069
    .local v1, "bokehPref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "bokeh":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1072
    .local v3, "values":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getCurrentIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 1073
    .local v2, "index":I
    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 1074
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/PhotoMenu$6;->val$pref:Lcom/android/camera/IconListPreference;

    .line 1075
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v4

    aget v4, v4, v2

    .line 1074
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    iget-object v4, p0, Lcom/android/camera/PhotoMenu$6;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v5, p0, Lcom/android/camera/PhotoMenu$6;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoMenu;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 1077
    iget-object v4, p0, Lcom/android/camera/PhotoMenu$6;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v4}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1078
    iget-object v4, p0, Lcom/android/camera/PhotoMenu$6;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v4, v1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1082
    .end local v2    # "index":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 1069
    .end local v0    # "bokeh":Ljava/lang/String;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
