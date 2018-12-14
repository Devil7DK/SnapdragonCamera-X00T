.class public Lcom/android/camera/util/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# static fields
.field public static final ACTION_CAPTURE_DONE:Ljava/lang/String; = "CaptureDone"

.field public static final ACTION_CAPTURE_FAIL:Ljava/lang/String; = "CaptureFail"

.field public static final ACTION_CAPTURE_START:Ljava/lang/String; = "CaptureStart"

.field public static final ACTION_CROP:Ljava/lang/String; = "Crop"

.field public static final ACTION_DELETE:Ljava/lang/String; = "Delete"

.field public static final ACTION_EDIT:Ljava/lang/String; = "Edit"

.field public static final ACTION_FILMSTRIP:Ljava/lang/String; = "Filmstrip"

.field public static final ACTION_FOREGROUNDED:Ljava/lang/String; = "Foregrounded"

.field public static final ACTION_GALLERY:Ljava/lang/String; = "Gallery"

.field public static final ACTION_OPEN_FAIL:Ljava/lang/String; = "OpenFailure"

.field public static final ACTION_PLAY_VIDEO:Ljava/lang/String; = "PlayVideo"

.field public static final ACTION_SCREEN_CHANGED:Ljava/lang/String; = "ScreenChanged"

.field public static final ACTION_SHARE:Ljava/lang/String; = "Share"

.field public static final ACTION_START_PREVIEW_FAIL:Ljava/lang/String; = "StartPreviewFailure"

.field public static final ACTION_STITCHING_DONE:Ljava/lang/String; = "StitchingDone"

.field public static final ACTION_STITCHING_START:Ljava/lang/String; = "StitchingStart"

.field public static final ACTION_TOUCH_FOCUS:Ljava/lang/String; = "TouchFocus"

.field public static final CATEGORY_BUTTON_PRESS:Ljava/lang/String; = "ButtonPress"

.field public static final CATEGORY_LIFECYCLE:Ljava/lang/String; = "AppLifecycle"

.field public static final COMPONENT_CAMERA:Ljava/lang/String; = "Camera"

.field public static final COMPONENT_EDITOR:Ljava/lang/String; = "Editor"

.field public static final COMPONENT_GALLERY:Ljava/lang/String; = "Gallery"

.field public static final COMPONENT_GCAM:Ljava/lang/String; = "GCam"

.field public static final COMPONENT_IMPORTER:Ljava/lang/String; = "Importer"

.field public static final COMPONENT_LIGHTCYCLE:Ljava/lang/String; = "Lightcycle"

.field public static final COMPONENT_PANORAMA:Ljava/lang/String; = "Panorama"

.field public static final LIFECYCLE_START:Ljava/lang/String; = "Start"

.field public static final TRANSITION_BACK_BUTTON:Ljava/lang/String; = "BackButton"

.field public static final TRANSITION_BUTTON_TAP:Ljava/lang/String; = "ButtonTap"

.field public static final TRANSITION_INTENT:Ljava/lang/String; = "Intent"

.field public static final TRANSITION_ITEM_TAP:Ljava/lang/String; = "ItemTap"

.field public static final TRANSITION_MENU_TAP:Ljava/lang/String; = "MenuTap"

.field public static final TRANSITION_PINCH_IN:Ljava/lang/String; = "PinchIn"

.field public static final TRANSITION_PINCH_OUT:Ljava/lang/String; = "PinchOut"

.field public static final TRANSITION_SWIPE:Ljava/lang/String; = "Swipe"

.field public static final TRANSITION_UP_BUTTON:Ljava/lang/String; = "UpButton"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, ""

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    return-void
.end method

.method public static onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "screenComponent"    # Ljava/lang/String;
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "optionalValue"    # J

    .prologue
    .line 55
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "optionalValue"    # J
    .param p5, "fileNameHash"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "optionalValue"    # J
    .param p5, "fileNameHash"    # Ljava/lang/String;
    .param p6, "parameters"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public static setPendingTransitionCause(Ljava/lang/String;)V
    .locals 0
    .param p0, "cause"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method
