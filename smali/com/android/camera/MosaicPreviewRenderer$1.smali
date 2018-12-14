.class Lcom/android/camera/MosaicPreviewRenderer$1;
.super Ljava/lang/Object;
.source "MosaicPreviewRenderer.java"

# interfaces
.implements Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MosaicPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/MosaicPreviewRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer$1;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 165
    return-void
.end method
