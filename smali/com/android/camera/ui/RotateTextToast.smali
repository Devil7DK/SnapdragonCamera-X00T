.class public Lcom/android/camera/ui/RotateTextToast;
.super Ljava/lang/Object;
.source "RotateTextToast.java"


# static fields
.field private static final LONG_DELAY:I = 0xdac

.field private static final SHORT_DELAY:I = 0x7d0

.field private static mOrientation:I

.field private static mToasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/camera/ui/RotateLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mToast:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/camera/ui/RotateTextToast;->mToasts:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "duration"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v2, Lcom/android/camera/ui/RotateTextToast$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/RotateTextToast$1;-><init>(Lcom/android/camera/ui/RotateTextToast;)V

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040031

    iget-object v3, p0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0d00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    .line 49
    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    sget v3, Lcom/android/camera/ui/RotateTextToast;->mOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 50
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    .line 51
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/16 v2, 0xdac

    :goto_0
    iput v2, p0, Lcom/android/camera/ui/RotateTextToast;->mDuration:I

    .line 52
    return-void

    .line 51
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "textResourceId"    # I
    .param p3, "duration"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;I)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;I)V

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/RotateTextToast;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RotateTextToast;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/RotateTextToast;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/RotateTextToast;
    .param p1, "x1"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/RotateTextToast;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RotateTextToast;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/camera/ui/RotateTextToast;->mToasts:Ljava/util/HashSet;

    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textResourceId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 87
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static setOrientation(I)V
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 91
    sput p0, Lcom/android/camera/ui/RotateTextToast;->mOrientation:I

    .line 92
    sget-object v1, Lcom/android/camera/ui/RotateTextToast;->mToasts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    .line 93
    .local v0, "toast":Lcom/android/camera/ui/RotateLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 95
    .end local v0    # "toast":Lcom/android/camera/ui/RotateLayout;
    :cond_0
    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .prologue
    .line 77
    sget-object v0, Lcom/android/camera/ui/RotateTextToast;->mToasts:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/camera/ui/RotateTextToast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method
