.class Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/OrientationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/OrientationManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManager;

    .line 80
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 88
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/app/OrientationManager;->access$000(II)I

    move-result p1

    .line 90
    goto :goto_0
.end method
