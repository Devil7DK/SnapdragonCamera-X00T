.class Lcom/android/camera/SDCard$1;
.super Landroid/content/BroadcastReceiver;
.source "SDCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SDCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SDCard;


# direct methods
.method constructor <init>(Lcom/android/camera/SDCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SDCard;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/SDCard$1;->this$0:Lcom/android/camera/SDCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/SDCard$1;->this$0:Lcom/android/camera/SDCard;

    invoke-static {v0}, Lcom/android/camera/SDCard;->access$000(Lcom/android/camera/SDCard;)V

    .line 123
    return-void
.end method
