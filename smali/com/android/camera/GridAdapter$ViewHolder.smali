.class Lcom/android/camera/GridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SceneModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public textTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/GridAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/GridAdapter;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/camera/GridAdapter$ViewHolder;->this$0:Lcom/android/camera/GridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/GridAdapter;Lcom/android/camera/GridAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/GridAdapter;
    .param p2, "x1"    # Lcom/android/camera/GridAdapter$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/camera/GridAdapter$ViewHolder;-><init>(Lcom/android/camera/GridAdapter;)V

    return-void
.end method
