.class Lcom/android/camera/TsMakeupManager$1;
.super Ljava/lang/Object;
.source "TsMakeupManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TsMakeupManager;->showMakeupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lcom/android/camera/TsMakeupManager;

.field final synthetic val$j:I

.field final synthetic val$pref:Lcom/android/camera/IconListPreference;

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/TsMakeupManager;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TsMakeupManager;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager$1;->this$0:Lcom/android/camera/TsMakeupManager;

    iput-object p2, p0, Lcom/android/camera/TsMakeupManager$1;->val$pref:Lcom/android/camera/IconListPreference;

    iput p3, p0, Lcom/android/camera/TsMakeupManager$1;->val$j:I

    iput-object p4, p0, Lcom/android/camera/TsMakeupManager$1;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/TsMakeupManager$1;->startTime:J

    .line 326
    :cond_0
    :goto_0
    return v8

    .line 304
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/TsMakeupManager$1;->startTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager$1;->val$pref:Lcom/android/camera/IconListPreference;

    iget v4, p0, Lcom/android/camera/TsMakeupManager$1;->val$j:I

    invoke-virtual {v2, v4}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 307
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager$1;->this$0:Lcom/android/camera/TsMakeupManager;

    iget-object v4, p0, Lcom/android/camera/TsMakeupManager$1;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/TsMakeupManager;->access$000(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager$1;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v2}, Lcom/android/camera/TsMakeupManager;->access$100(Lcom/android/camera/TsMakeupManager;)Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/TsMakeupManager$1;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/TsMakeupManager$1;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/camera/TsMakeupManager$MakeupLevelListener;->onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/android/camera/TsMakeupManager$1;->val$views:[Landroid/view/View;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 310
    .local v1, "v1":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    .end local v1    # "v1":Landroid/view/View;
    :cond_2
    const v2, 0x7f0d0053

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "border":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 315
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager$1;->this$0:Lcom/android/camera/TsMakeupManager;

    iget-object v3, p0, Lcom/android/camera/TsMakeupManager$1;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/TsMakeupManager;->access$200(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager$1;->this$0:Lcom/android/camera/TsMakeupManager;

    invoke-static {v2}, Lcom/android/camera/TsMakeupManager;->access$300(Lcom/android/camera/TsMakeupManager;)Lcom/android/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->adjustOrientation()V

    goto :goto_0
.end method
