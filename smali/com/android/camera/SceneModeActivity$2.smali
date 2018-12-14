.class Lcom/android/camera/SceneModeActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SceneModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SceneModeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SceneModeActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/SceneModeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SceneModeActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/SceneModeActivity$2;->this$0:Lcom/android/camera/SceneModeActivity;

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
    .line 136
    iget-object v0, p0, Lcom/android/camera/SceneModeActivity$2;->this$0:Lcom/android/camera/SceneModeActivity;

    invoke-static {v0}, Lcom/android/camera/SceneModeActivity;->access$000(Lcom/android/camera/SceneModeActivity;)Lcom/android/camera/ui/DotsView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/DotsView;->update(IF)V

    .line 137
    return-void
.end method
