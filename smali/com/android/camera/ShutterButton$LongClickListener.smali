.class Lcom/android/camera/ShutterButton$LongClickListener;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ShutterButton;


# direct methods
.method private constructor <init>(Lcom/android/camera/ShutterButton;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/ShutterButton$LongClickListener;->this$0:Lcom/android/camera/ShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ShutterButton;Lcom/android/camera/ShutterButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ShutterButton;
    .param p2, "x1"    # Lcom/android/camera/ShutterButton$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton$LongClickListener;-><init>(Lcom/android/camera/ShutterButton;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ShutterButton$LongClickListener;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/ShutterButton;->access$000(Lcom/android/camera/ShutterButton;)Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/camera/ShutterButton$LongClickListener;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/ShutterButton;->access$000(Lcom/android/camera/ShutterButton;)Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonLongClick()V

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
