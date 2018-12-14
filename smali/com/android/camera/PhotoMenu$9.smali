.class Lcom/android/camera/PhotoMenu$9;
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

.field final synthetic val$faceDetectPref:Lcom/android/camera/ListPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$9;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$9;->val$faceDetectPref:Lcom/android/camera/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$9;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$600(Lcom/android/camera/PhotoMenu;)V

    .line 1153
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$9;->val$faceDetectPref:Lcom/android/camera/ListPreference;

    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$9;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu$9;->val$faceDetectPref:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1155
    return-void
.end method
