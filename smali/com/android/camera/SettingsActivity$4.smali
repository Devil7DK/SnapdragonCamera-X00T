.class Lcom/android/camera/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SettingsActivity;->onRestoreDefaultSettingsClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SettingsActivity;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/camera/SettingsActivity$4;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$4;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0}, Lcom/android/camera/SettingsActivity;->access$700(Lcom/android/camera/SettingsActivity;)V

    .line 332
    return-void
.end method
