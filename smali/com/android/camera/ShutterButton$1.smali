.class Lcom/android/camera/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/ShutterButton$1;->this$0:Lcom/android/camera/ShutterButton;

    iput-boolean p2, p0, Lcom/android/camera/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ShutterButton$1;->this$0:Lcom/android/camera/ShutterButton;

    iget-boolean v1, p0, Lcom/android/camera/ShutterButton$1;->val$pressed:Z

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$200(Lcom/android/camera/ShutterButton;Z)V

    .line 123
    return-void
.end method
