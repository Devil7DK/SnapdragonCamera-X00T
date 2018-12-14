.class Lcom/android/camera/RefocusActivity$2;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RefocusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 136
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 137
    .local v3, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 138
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 139
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 140
    .local v1, "h":I
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$300(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$Indicator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v6}, Lcom/android/camera/RefocusActivity;->access$200(Lcom/android/camera/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    iget-object v7, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    .line 141
    invoke-static {v7}, Lcom/android/camera/RefocusActivity;->access$200(Lcom/android/camera/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 140
    invoke-virtual {v5, v6, v7}, Lcom/android/camera/RefocusActivity$Indicator;->startAnimation(FF)V

    .line 142
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$000(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$DepthMap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 143
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$000(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$DepthMap;

    move-result-object v5

    int-to-float v6, v2

    div-float v6, v3, v6

    int-to-float v7, v1

    div-float v7, v4, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/RefocusActivity$DepthMap;->getDepth(FF)I

    move-result v0

    .line 144
    .local v0, "depth":I
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5, v0}, Lcom/android/camera/RefocusActivity;->access$400(Lcom/android/camera/RefocusActivity;I)V

    .line 145
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$500(Lcom/android/camera/RefocusActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    const v7, 0x7f020169

    invoke-virtual {v6, v7}, Lcom/android/camera/RefocusActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
