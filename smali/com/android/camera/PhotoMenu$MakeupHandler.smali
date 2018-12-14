.class public Lcom/android/camera/PhotoMenu$MakeupHandler;
.super Landroid/os/Handler;
.source "PhotoMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MakeupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;


# direct methods
.method protected constructor <init>(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$MakeupHandler;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 298
    :goto_0
    return-void

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$MakeupHandler;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$000(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/TsMakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->showMakeupView()V

    .line 295
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$MakeupHandler;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->adjustOrientation()V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
