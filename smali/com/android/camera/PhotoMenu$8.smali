.class Lcom/android/camera/PhotoMenu$8;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->showAlertDialog(Lcom/android/camera/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$8;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1160
    return-void
.end method
