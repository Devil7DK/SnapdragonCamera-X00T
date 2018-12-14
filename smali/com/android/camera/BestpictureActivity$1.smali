.class Lcom/android/camera/BestpictureActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "BestpictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BestpictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BestpictureActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$1;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$1;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$000(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/ui/DotsView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/DotsView;->update(IF)V

    .line 205
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 209
    return-void
.end method
