.class Lcom/android/camera/BestpictureActivity$ImagePagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "BestpictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BestpictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/BestpictureActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$ImagePagerAdapter;->this$0:Lcom/android/camera/BestpictureActivity;

    .line 593
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 594
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 609
    const/16 v0, 0xa

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "imageNum"    # I

    .prologue
    .line 598
    :goto_0
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$ImagePagerAdapter;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/BestpictureActivity$ImageItems;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 600
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity$ImagePagerAdapter;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/BestpictureFragment;->create(ILcom/android/camera/BestpictureActivity$ImageItems;)Lcom/android/camera/BestpictureFragment;

    move-result-object v0

    return-object v0
.end method
