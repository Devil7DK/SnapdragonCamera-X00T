.class Lcom/android/camera/crop/CropActivity$1;
.super Ljava/lang/Object;
.source "CropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/crop/CropActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/crop/CropActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/crop/CropActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/crop/CropActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/crop/CropActivity$1;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$1;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropActivity;->startFinishOutput()V

    .line 115
    return-void
.end method
