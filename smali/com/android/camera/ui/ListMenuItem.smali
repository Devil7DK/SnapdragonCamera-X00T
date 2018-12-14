.class public Lcom/android/camera/ui/ListMenuItem;
.super Landroid/widget/RelativeLayout;
.source "ListMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ListMenuItem$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItem"


# instance fields
.field private mEntry:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field protected mIndex:I

.field private mListener:Lcom/android/camera/ui/ListMenuItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/ListPreference;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ListMenuItem;->setTitle(Lcom/android/camera/ListPreference;)V

    .line 84
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ListMenuItem;->setIcon(Lcom/android/camera/ListPreference;)V

    .line 87
    iput-object p1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenuItem;->reloadPreference()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 67
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenuItem;->updateView()V

    .line 132
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ListMenuItem;->mIndex:I

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenuItem;->updateView()V

    .line 123
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    .line 142
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 143
    if-eqz p1, :cond_2

    .line 144
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    if-eqz p1, :cond_3

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 154
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 156
    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 161
    :cond_1
    :goto_2
    return-void

    .line 146
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_2
.end method

.method public setEnabled(ZLjava/lang/String;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    .line 164
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 165
    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    if-eqz p1, :cond_3

    .line 172
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 176
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 183
    :cond_1
    :goto_2
    return-void

    .line 168
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_1

    .line 181
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_2
.end method

.method protected setIcon(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 75
    instance-of v1, p1, Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 76
    check-cast p1, Lcom/android/camera/IconListPreference;

    .end local p1    # "preference":Lcom/android/camera/ListPreference;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v0

    .line 77
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/ListMenuItem$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ListMenuItem$Listener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/ui/ListMenuItem;->mListener:Lcom/android/camera/ui/ListMenuItem$Listener;

    .line 127
    return-void
.end method

.method protected setTitle(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 70
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method protected updateView()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "ListMenuItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to find override value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_0
.end method
