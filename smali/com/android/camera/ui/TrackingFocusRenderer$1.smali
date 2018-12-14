.class Lcom/android/camera/ui/TrackingFocusRenderer$1;
.super Ljava/lang/Object;
.source "TrackingFocusRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TrackingFocusRenderer;->putRegisteredCords(Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/TrackingFocusRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/TrackingFocusRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/TrackingFocusRenderer;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/camera/ui/TrackingFocusRenderer$1;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/TrackingFocusRenderer$1;->this$0:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->update()V

    .line 185
    return-void
.end method
