.class public Lcom/android/camera/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Lcom/android/camera/ui/ListMenu$SettingsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SettingsManager$SettingState;,
        Lcom/android/camera/SettingsManager$Values;,
        Lcom/android/camera/SettingsManager$Listener;
    }
.end annotation


# static fields
.field public static final KEY_ANTI_BANDING_LEVEL:Ljava/lang/String; = "pref_camera2_anti_banding_level_key"

.field public static final KEY_AUDIO_ENCODER:Ljava/lang/String; = "pref_camera2_audioencoder_key"

.field public static final KEY_AUTO_HDR:Ljava/lang/String; = "pref_camera2_auto_hdr_key"

.field public static final KEY_BOKEH_BLUR_DEGREE:Ljava/lang/String; = "pref_camera2_bokeh_blur_key"

.field public static final KEY_BSGC_DETECTION:Ljava/lang/String; = "pref_camera2_bsgc_key"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera2_id_key"

.field public static final KEY_CAMERA_SAVEPATH:Ljava/lang/String; = "pref_camera2_savepath_key"

.field public static final KEY_CLEARSIGHT:Ljava/lang/String; = "pref_camera2_clearsight_key"

.field public static final KEY_COLOR_EFFECT:Ljava/lang/String; = "pref_camera2_coloreffect_key"

.field public static final KEY_DEVELOPER_MENU:Ljava/lang/String; = "pref_camera2_developer_menu_key"

.field public static final KEY_DIS:Ljava/lang/String; = "pref_camera2_dis_key"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "pref_camera2_exposure_key"

.field public static final KEY_FACE_DETECTION:Ljava/lang/String; = "pref_camera2_facedetection_key"

.field public static final KEY_FILTER_MODE:Ljava/lang/String; = "pref_camera2_filter_mode_key"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "pref_camera2_flashmode_key"

.field public static final KEY_FOCUS_DISTANCE:Ljava/lang/String; = "pref_camera2_focus_distance_key"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "pref_camera2_focusmode_key"

.field public static final KEY_HDR:Ljava/lang/String; = "pref_camera2_hdr_key"

.field public static final KEY_HISTOGRAM:Ljava/lang/String; = "pref_camera2_histogram_key"

.field public static final KEY_INSTANT_AEC:Ljava/lang/String; = "pref_camera2_instant_aec_key"

.field public static final KEY_ISO:Ljava/lang/String; = "pref_camera2_iso_key"

.field public static final KEY_ISO_INDEX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera2_jpegquality_key"

.field public static final KEY_LONGSHOT:Ljava/lang/String; = "pref_camera2_longshot_key"

.field public static final KEY_MAKEUP:Ljava/lang/String; = "pref_camera2_makeup_key"

.field public static final KEY_MONO_ONLY:Ljava/lang/String; = "pref_camera2_mono_only_key"

.field public static final KEY_MONO_PREVIEW:Ljava/lang/String; = "pref_camera2_mono_preview_key"

.field public static final KEY_MPO:Ljava/lang/String; = "pref_camera2_mpo_key"

.field public static final KEY_NOISE_REDUCTION:Ljava/lang/String; = "pref_camera2_noise_reduction_key"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "pref_camera2_picturesize_key"

.field public static final KEY_QCFA:Ljava/lang/String; = "pref_camera2_qcfa_key"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera2_recordlocation_key"

.field public static final KEY_REDEYE_REDUCTION:Ljava/lang/String; = "pref_camera2_redeyereduction_key"

.field public static final KEY_RESTORE_DEFAULT:Ljava/lang/String; = "pref_camera2_restore_default_key"

.field public static final KEY_SATURATION_LEVEL:Ljava/lang/String; = "pref_camera2_saturation_level_key"

.field public static final KEY_SAVERAW:Ljava/lang/String; = "pref_camera2_saveraw_key"

.field public static final KEY_SCEND_MODE_INSTRUCTIONAL:Ljava/lang/String; = "pref_camera2_scenemode_instructional"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "pref_camera2_scenemode_key"

.field public static final KEY_SELFIEMIRROR:Ljava/lang/String; = "pref_camera2_selfiemirror_key"

.field public static final KEY_SELFIE_FLASH:Ljava/lang/String; = "pref_selfie_flash_key"

.field public static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "pref_camera2_shutter_sound_key"

.field public static final KEY_SWITCH_CAMERA:Ljava/lang/String; = "pref_camera2_switch_camera_key"

.field public static final KEY_TIMER:Ljava/lang/String; = "pref_camera2_timer_key"

.field public static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera2_video_duration_key"

.field public static final KEY_VIDEO_ENCODER:Ljava/lang/String; = "pref_camera2_videoencoder_key"

.field public static final KEY_VIDEO_FLASH_MODE:Ljava/lang/String; = "pref_camera2_video_flashmode_key"

.field public static final KEY_VIDEO_HIGH_FRAME_RATE:Ljava/lang/String; = "pref_camera2_hfr_key"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "pref_camera2_video_quality_key"

.field public static final KEY_VIDEO_ROTATION:Ljava/lang/String; = "pref_camera2_video_rotation_key"

.field public static final KEY_VIDEO_TIME_LAPSE_FRAME_INTERVAL:Ljava/lang/String; = "pref_camera2_video_time_lapse_frame_interval_key"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "pref_camera2_whitebalance_key"

.field public static final KEY_ZOOM:Ljava/lang/String; = "pref_camera2_zoom_key"

.field public static final KEY_ZSL:Ljava/lang/String; = "pref_camera2_zsl_key"

.field public static final RESOURCE_TYPE_LARGEICON:I = 0x1

.field public static final RESOURCE_TYPE_THUMBNAIL:I = 0x0

.field public static final SCENE_MODE_AUTO_INT:I = 0x0

.field public static final SCENE_MODE_BESTPICTURE_INT:I = 0x67

.field public static final SCENE_MODE_BLURBUSTER_INT:I = 0x6a

.field public static final SCENE_MODE_BOKEH_INT:I = 0x6e

.field public static final SCENE_MODE_BOKEH_STRING:Ljava/lang/String; = "110"

.field public static final SCENE_MODE_CHROMAFLASH_INT:I = 0x69

.field public static final SCENE_MODE_CUSTOM_START:I = 0x64

.field public static final SCENE_MODE_DUAL_INT:I = 0x64

.field public static final SCENE_MODE_DUAL_STRING:Ljava/lang/String; = "100"

.field public static final SCENE_MODE_NIGHT_INT:I = 0x5

.field public static final SCENE_MODE_OPTIZOOM_INT:I = 0x65

.field public static final SCENE_MODE_PANORAMA_INT:I = 0x68

.field public static final SCENE_MODE_PROMODE_INT:I = 0x6d

.field public static final SCENE_MODE_SHARPSHOOTER_INT:I = 0x6b

.field public static final SCENE_MODE_TRACKINGFOCUS_INT:I = 0x6c

.field public static final SCENE_MODE_UBIFOCUS_INT:I = 0x66

.field private static final TAG:Ljava/lang/String; = "SnapCam_SettingsManager"

.field private static sInstance:Lcom/android/camera/SettingsManager;


# instance fields
.field private mCameraId:I

.field private mCharacteristics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDependency:Lorg/json/JSONObject;

.field private mDependendsOnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExtendedHFRSize:[I

.field private mFilteredKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFrontCameraPresent:Z

.field private mIsMonoCameraPresent:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/SettingsManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mValuesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/SettingsManager$Values;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    .line 187
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "deblur"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "100"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "100"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "200"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "400"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "800"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "1600"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-boolean v8, p0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    .line 171
    iput-boolean v8, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    .line 198
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    .line 199
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    .line 200
    iput-object p1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    .line 201
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 202
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v8, :cond_0

    .line 203
    new-instance v8, Lcom/android/camera/ComboPreferences;

    iget-object v9, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 205
    :cond_0
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v8}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 207
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const-string v9, "camera"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    .line 209
    .local v6, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "cameraIdList":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v1

    if-ge v5, v8, :cond_3

    .line 211
    aget-object v0, v1, v5

    .line 213
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 214
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const-string v8, "SnapCam_SettingsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cameraIdList size ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v7, 0x0

    .line 217
    .local v7, "monoOnly":B
    :try_start_1
    sget-object v8, Lcom/android/camera/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 220
    :goto_1
    if-ne v7, v11, :cond_1

    .line 221
    :try_start_2
    sput v5, Lcom/android/camera/CaptureModule;->MONO_ID:I

    .line 222
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    .line 224
    :cond_1
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 225
    .local v4, "facing":I
    if-nez v4, :cond_2

    .line 226
    sput v5, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 227
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    .line 229
    :cond_2
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v8, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIdList":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "facing":I
    .end local v5    # "i":I
    .end local v7    # "monoOnly":B
    :catch_0
    move-exception v3

    .line 232
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 235
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_3
    const-string v8, "dependency.json"

    invoke-direct {p0, v8}, Lcom/android/camera/SettingsManager;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/SettingsManager;->mDependency:Lorg/json/JSONObject;

    .line 236
    return-void

    .line 218
    .restart local v0    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraIdList":[Ljava/lang/String;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v5    # "i":I
    .restart local v7    # "monoOnly":B
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private buildCameraId()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 865
    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 866
    .local v8, "numOfCameras":I
    add-int/lit8 v10, v8, 0x1

    new-array v6, v10, [Ljava/lang/CharSequence;

    .line 867
    .local v6, "fullEntryValues":[Ljava/lang/CharSequence;
    add-int/lit8 v10, v8, 0x1

    new-array v5, v10, [Ljava/lang/CharSequence;

    .line 868
    .local v5, "fullEntries":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 869
    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 870
    .local v3, "facing":I
    if-nez v3, :cond_0

    const-string v4, "front"

    .line 872
    .local v4, "facingString":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "camera "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " facing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 873
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    .line 874
    const-string v10, "SnapCam_SettingsManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 870
    .end local v4    # "facingString":Ljava/lang/String;
    :cond_0
    const-string v4, "back"

    goto :goto_1

    .line 876
    .end local v3    # "facing":I
    :cond_1
    const-string v10, "disable"

    aput-object v10, v5, v8

    .line 877
    const-string v10, "-1"

    aput-object v10, v6, v8

    .line 878
    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera2_switch_camera_key"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 879
    .local v9, "switchPref":Lcom/android/camera/ListPreference;
    invoke-virtual {v9, v5}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 880
    invoke-virtual {v9, v6}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 881
    iget-boolean v10, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    if-nez v10, :cond_2

    .line 882
    const-string v10, "SnapCam_SettingsManager"

    const-string v11, "no front camera,remove camera id pref"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera2_id_key"

    invoke-direct {p0, v10, v11}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 898
    :goto_2
    return-void

    .line 886
    :cond_2
    new-array v2, v8, [Ljava/lang/CharSequence;

    .line 887
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    new-array v1, v8, [Ljava/lang/CharSequence;

    .line 889
    .local v1, "entries":[Ljava/lang/CharSequence;
    const-string v10, "0"

    aput-object v10, v2, v14

    .line 890
    const-string v10, "BACK"

    aput-object v10, v1, v14

    .line 891
    iget-boolean v10, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    if-eqz v10, :cond_3

    if-le v8, v13, :cond_3

    .line 892
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v13

    .line 893
    const-string v10, "FRONT"

    aput-object v10, v1, v13

    .line 895
    :cond_3
    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera2_id_key"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 896
    .local v0, "cameraIdPref":Lcom/android/camera/ListPreference;
    invoke-virtual {v0, v2}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 897
    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private buildExposureCompensation(I)V
    .locals 22
    .param p1, "cameraId"    # I

    .prologue
    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Range;

    .line 816
    .local v14, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 817
    .local v11, "max":I
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 818
    .local v12, "min":I
    if-nez v12, :cond_0

    if-nez v11, :cond_0

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v20, v0

    const-string v21, "pref_camera2_exposure_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 850
    :goto_0
    return-void

    .line 822
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v20, v0

    const-string v21, "pref_camera2_exposure_key"

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 823
    .local v13, "pref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Rational;

    .line 825
    .local v15, "rational":Landroid/util/Rational;
    invoke-virtual {v15}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v18

    .line 826
    .local v18, "step":D
    const/4 v10, 0x1

    .line 827
    .local v10, "increment":I
    :goto_1
    sub-int v20, v11, v12

    div-int v20, v20, v10

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 828
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 830
    :cond_1
    move/from16 v17, v12

    .line 831
    .local v17, "start":I
    if-gez v17, :cond_2

    .line 832
    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v20

    rem-int v20, v20, v10

    if-eqz v20, :cond_2

    .line 833
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 836
    :cond_2
    const/16 v16, 0x0

    .line 837
    .local v16, "size":I
    move/from16 v9, v17

    .local v9, "i":I
    :goto_3
    if-gt v9, v11, :cond_3

    add-int/lit8 v16, v16, 0x1

    add-int/2addr v9, v10

    goto :goto_3

    .line 838
    :cond_3
    move/from16 v0, v16

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 839
    .local v6, "entries":[Ljava/lang/CharSequence;
    move/from16 v0, v16

    new-array v7, v0, [Ljava/lang/CharSequence;

    .line 840
    .local v7, "entryValues":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 841
    .local v5, "count":I
    move/from16 v9, v17

    :goto_4
    if-gt v9, v11, :cond_5

    .line 842
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v5

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .local v4, "builder":Ljava/lang/StringBuilder;
    if-lez v9, :cond_4

    const/16 v20, 0x2b

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 845
    :cond_4
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v20, "#.##"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 846
    .local v8, "format":Ljava/text/DecimalFormat;
    int-to-double v0, v9

    move-wide/from16 v20, v0

    mul-double v20, v20, v18

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v5

    .line 841
    add-int/2addr v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 848
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "format":Ljava/text/DecimalFormat;
    :cond_5
    invoke-virtual {v13, v6}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 849
    invoke-virtual {v13, v7}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private checkDependencyAndUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 24
    .param p1, "changedPrefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 385
    .local v5, "changedPref":Lcom/android/camera/ListPreference;
    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 454
    :cond_0
    :goto_0
    return-object v4

    .line 387
    :cond_1
    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 388
    .local v20, "value":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 389
    .local v17, "prevValue":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 391
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v4, "changed":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    new-instance v21, Lcom/android/camera/SettingsManager$Values;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .local v21, "values":Lcom/android/camera/SettingsManager$Values;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v22, Lcom/android/camera/SettingsManager$SettingState;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getDependencyMapForKey(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 397
    .local v12, "map":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/camera/SettingsManager;->getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/android/camera/SettingsManager;->getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 400
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 401
    .local v19, "turnOn":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 403
    .local v18, "turnOff":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 404
    .local v6, "dependencyList":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 406
    .local v15, "originalDependencyList":Lorg/json/JSONObject;
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 407
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 408
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 410
    :cond_3
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 411
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 412
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 414
    :cond_4
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 415
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 416
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 418
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 419
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 420
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 423
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_7
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 424
    .local v11, "keyToTurnOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 425
    .local v7, "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v23

    if-eqz v23, :cond_7

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "values":Lcom/android/camera/SettingsManager$Values;
    check-cast v21, Lcom/android/camera/SettingsManager$Values;

    .line 428
    .restart local v21    # "values":Lcom/android/camera/SettingsManager$Values;
    if-eqz v21, :cond_7

    .line 429
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v23, Lcom/android/camera/SettingsManager$SettingState;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 434
    .end local v7    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "keyToTurnOn":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_9
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 435
    .local v10, "keyToTurnOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 436
    .local v16, "pref":Lcom/android/camera/ListPreference;
    if-eqz v16, :cond_9

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "values":Lcom/android/camera/SettingsManager$Values;
    check-cast v21, Lcom/android/camera/SettingsManager$Values;

    .line 438
    .restart local v21    # "values":Lcom/android/camera/SettingsManager$Values;
    if-eqz v21, :cond_9

    .line 439
    if-eqz v21, :cond_a

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 440
    :cond_a
    const/4 v13, 0x0

    .line 442
    .local v13, "newValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 447
    if-eqz v13, :cond_9

    .line 449
    new-instance v14, Lcom/android/camera/SettingsManager$Values;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0, v13}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .local v14, "newValues":Lcom/android/camera/SettingsManager$Values;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v23, Lcom/android/camera/SettingsManager$SettingState;

    move-object/from16 v0, v23

    invoke-direct {v0, v10, v14}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 443
    .end local v14    # "newValues":Lcom/android/camera/SettingsManager$Values;
    :catch_0
    move-exception v8

    .line 444
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 453
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v10    # "keyToTurnOff":Ljava/lang/String;
    .end local v13    # "newValue":Ljava/lang/String;
    .end local v16    # "pref":Lcom/android/camera/ListPreference;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/SettingsManager;->updateBackDependency(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method private clearPerCameraPreferences()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1650
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/camera/ComboPreferences;->getSharedPreferencesNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 1651
    .local v3, "preferencesNames":[Ljava/lang/String;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v3, v5

    .line 1652
    .local v1, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    .line 1653
    invoke-virtual {v8, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1654
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1651
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1658
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1659
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v5, "request_permission"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1660
    .local v4, "requestPermission":Z
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    .line 1661
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1662
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1663
    const-string v5, "request_permission"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1664
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1665
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/android/camera/SettingsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    .line 242
    :cond_0
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method private filterChromaflashPictureSizeOptions()V
    .locals 8

    .prologue
    .line 913
    const-string v6, "pref_camera2_scenemode_key"

    invoke-virtual {p0, v6}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "scene":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera2_picturesize_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 915
    .local v1, "picturePref":Lcom/android/camera/ListPreference;
    if-nez v1, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->reloadInitialEntriesAndEntryValues()V

    .line 917
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x69

    if-ne v6, v7, :cond_3

    .line 918
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->getSupportedChromaFlashPictureSize()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 919
    iget-object v6, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 922
    :cond_2
    const-string v6, "pref_camera2_picturesize_key"

    invoke-virtual {p0, v6}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/SettingsManager;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    .line 923
    .local v2, "pictureSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0x160

    if-gt v6, v7, :cond_0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v7, 0x120

    if-gt v6, v7, :cond_0

    .line 924
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 925
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    array-length v4, v0

    .line 926
    .local v4, "size":I
    add-int/lit8 v6, v4, -0x1

    aget-object v5, v0, v6

    .line 927
    .local v5, "smallerSize":Ljava/lang/CharSequence;
    const-string v6, "pref_camera2_picturesize_key"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 931
    .end local v0    # "entryValues":[Ljava/lang/CharSequence;
    .end local v2    # "pictureSize":Landroid/util/Size;
    .end local v4    # "size":I
    .end local v5    # "smallerSize":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v6

    .line 930
    invoke-direct {p0, v6}, Lcom/android/camera/SettingsManager;->getSupportedPictureSize(I)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 932
    iget-object v6, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private filterHFROptions()V
    .locals 3

    .prologue
    .line 938
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_hfr_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 939
    .local v0, "hfrPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->reloadInitialEntriesAndEntryValues()V

    .line 942
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->getSupportedHighFrameRate()Ljava/util/List;

    move-result-object v1

    .line 941
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_0
    return-void
.end method

.method private filterPreferences(I)V
    .locals 31
    .param p1, "cameraId"    # I

    .prologue
    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_whitebalance_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v27

    .line 623
    .local v27, "whiteBalance":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_flashmode_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 624
    .local v11, "flashMode":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_coloreffect_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 625
    .local v8, "colorEffect":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_scenemode_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v24

    .line 626
    .local v24, "sceneMode":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_scenemode_instructional"

    .line 627
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v25

    .line 629
    .local v25, "sceneModeInstructional":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_id_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 630
    .local v6, "cameraIdPref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_picturesize_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    .line 631
    .local v20, "pictureSize":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_exposure_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 632
    .local v9, "exposure":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_iso_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    .line 633
    .local v15, "iso":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_clearsight_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 634
    .local v7, "clearsight":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_mono_preview_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v17

    .line 635
    .local v17, "monoPreview":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_mono_only_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 636
    .local v16, "monoOnly":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_mpo_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v18

    .line 637
    .local v18, "mpo":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_redeyereduction_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v22

    .line 638
    .local v22, "redeyeReduction":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_video_quality_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v26

    .line 639
    .local v26, "videoQuality":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_audioencoder_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 640
    .local v4, "audioEncoder":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_noise_reduction_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v19

    .line 641
    .local v19, "noiseReduction":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_facedetection_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 642
    .local v10, "faceDetection":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_instant_aec_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 643
    .local v14, "instantAec":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_saturation_level_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v23

    .line 644
    .local v23, "saturationLevel":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_anti_banding_level_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 645
    .local v3, "antiBandingLevel":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_histogram_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 646
    .local v13, "histogram":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_hdr_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 647
    .local v12, "hdr":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_zoom_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v28

    .line 648
    .local v28, "zoom":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_qcfa_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v21

    .line 649
    .local v21, "qcfa":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_bsgc_key"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 651
    .local v5, "bsgc":Lcom/android/camera/ListPreference;
    if-eqz v27, :cond_0

    .line 652
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedWhiteBalanceModes(I)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_0
    if-eqz v11, :cond_1

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SettingsManager;->mCameraId:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/camera/SettingsManager;->isFlashAvailable(I)Z

    move-result v29

    if-nez v29, :cond_1

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_flashmode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v11}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_1
    if-eqz v5, :cond_2

    .line 665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SettingsManager;->mCameraId:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->isBsgcAvailable(I)Z

    move-result v29

    if-nez v29, :cond_2

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_bsgc_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_2
    if-eqz v8, :cond_3

    .line 672
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedColorEffects(I)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v8, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_3
    if-eqz v14, :cond_4

    .line 679
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedInstantAecAvailableModes(I)Ljava/util/List;

    move-result-object v29

    .line 678
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v14, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v14}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_4
    if-eqz v23, :cond_5

    .line 686
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedSaturationLevelAvailableModes(I)Ljava/util/List;

    move-result-object v29

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_5
    if-eqz v3, :cond_6

    .line 693
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedAntiBandingLevelAvailableModes(I)Ljava/util/List;

    move-result-object v29

    .line 692
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_6
    if-eqz v13, :cond_7

    .line 700
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedHistogramAvailableModes(I)Ljava/util/List;

    move-result-object v29

    .line 699
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v13, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v13}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_7
    if-eqz v12, :cond_8

    .line 707
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedHdrAvailableModes(I)Ljava/util/List;

    move-result-object v29

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v12, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v12}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_8
    if-eqz v24, :cond_9

    .line 713
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedSceneModes(I)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_9
    if-eqz v25, :cond_a

    .line 720
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedSceneModes(I)Ljava/util/List;

    move-result-object v29

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_a
    if-eqz v6, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SettingsManager;->buildCameraId()V

    .line 727
    :cond_b
    if-eqz v20, :cond_c

    .line 728
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedPictureSize(I)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_c
    :goto_0
    if-eqz v9, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->buildExposureCompensation(I)V

    .line 739
    :cond_d
    if-eqz v15, :cond_e

    .line 740
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedIso(I)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v15, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v15}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_e
    if-eqz v26, :cond_f

    .line 747
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedVideoSize(I)Ljava/util/List;

    move-result-object v29

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    move/from16 v29, v0

    if-nez v29, :cond_13

    .line 753
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_clearsight_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 754
    :cond_10
    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_mono_preview_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 755
    :cond_11
    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_mono_only_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 756
    :cond_12
    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_mpo_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 759
    :cond_13
    if-eqz v22, :cond_14

    .line 760
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedRedeyeReduction(I)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_14
    if-eqz v4, :cond_15

    .line 767
    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/camera/SettingsManager;->getSupportedAudioEncoders([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v29

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_15
    if-eqz v19, :cond_16

    .line 774
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedNoiseReductionModes(I)Ljava/util/List;

    move-result-object v29

    .line 773
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_16
    if-eqz v10, :cond_17

    .line 780
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->isFaceDetectionSupported(I)Z

    move-result v29

    if-nez v29, :cond_17

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_facedetection_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 787
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SettingsManager;->filterHFROptions()V

    .line 788
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SettingsManager;->filterVideoEncoderOptions()V

    .line 790
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    move/from16 v29, v0

    if-eqz v29, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SettingsManager;->mCameraId:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->isFacingFront(I)Z

    move-result v29

    if-nez v29, :cond_19

    .line 791
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_selfie_flash_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera2_selfiemirror_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 795
    :cond_19
    if-eqz v28, :cond_1a

    .line 797
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedZoomLevel(I)Ljava/util/List;

    move-result-object v29

    .line 796
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_1a
    return-void

    .line 731
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)Z
    .locals 2
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    const/4 v0, 0x1

    .line 1405
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->filterDuplicated()V

    .line 1406
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 1407
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 1411
    :goto_0
    return v0

    .line 1410
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/SettingsManager;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 1411
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z
    .locals 3
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 1539
    if-nez p2, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 1550
    :goto_0
    return v0

    .line 1543
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 1544
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_1

    .line 1545
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 1549
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 1550
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterVideoEncoderOptions()V
    .locals 3

    .prologue
    .line 901
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_videoencoder_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 903
    .local v0, "videoEncoder":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->reloadInitialEntriesAndEntryValues()V

    .line 906
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->getSupportedVideoEncoders()Ljava/util/List;

    move-result-object v1

    .line 905
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_0
    return-void
.end method

.method private getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dependencyMap"    # Lorg/json/JSONObject;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1640
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "default"

    .line 1641
    :cond_0
    return-object p2
.end method

.method private getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1626
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->getDependencyMapForKey(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1627
    .local v0, "dependencyMap":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-object v2

    .line 1628
    :cond_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p2, "default"

    .line 1629
    :cond_2
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1630
    invoke-direct {p0, v0, p2}, Lcom/android/camera/SettingsManager;->getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1632
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1633
    :catch_0
    move-exception v1

    .line 1634
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDependencyMapForKey(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1616
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mDependency:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 1621
    :goto_0
    return-object v1

    .line 1618
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mDependency:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/camera/SettingsManager;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method private static getSupportedAudioEncoders([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 7
    .param p0, "strings"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v2, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p0, v4

    .line 1365
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/util/SettingTranslation;->getAudioEncoder(Ljava/lang/String;)I

    move-result v3

    .line 1367
    .local v3, "value":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1369
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_1
    return-object v2
.end method

.method private getSupportedChromaFlashPictureSize()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x160

    const/16 v8, 0x120

    const/16 v7, 0x100

    .line 949
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 951
    .local v2, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v2, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    .line 952
    .local v4, "sizes":[Landroid/util/Size;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 955
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v5, v9, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 956
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 962
    .local v0, "highResSizes":[Landroid/util/Size;
    if-eqz v0, :cond_3

    .line 963
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 964
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v5, v9, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 965
    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 970
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method private getSupportedFlashModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1276
    .local v0, "flashModes":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v2, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 1278
    .local v1, "mode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1280
    .end local v1    # "mode":I
    :cond_0
    return-object v2
.end method

.method private getSupportedHighFrameRate()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 974
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .local v5, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "off"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v9, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v10, "pref_camera2_video_quality_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 977
    .local v6, "videoQuality":Lcom/android/camera/ListPreference;
    if-nez v6, :cond_1

    .line 1007
    :cond_0
    return-object v5

    .line 978
    :cond_1
    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 979
    .local v8, "videoSizeStr":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 980
    invoke-direct {p0, v8}, Lcom/android/camera/SettingsManager;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v7

    .line 982
    .local v7, "videoSize":Landroid/util/Size;
    :try_start_0
    iget v9, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-virtual {p0, v9, v7}, Lcom/android/camera/SettingsManager;->getSupportedHighSpeedVideoFPSRange(ILandroid/util/Size;)[Landroid/util/Range;

    move-result-object v4

    .line 983
    .local v4, "range":[Landroid/util/Range;
    array-length v11, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v3, v4, v10

    .line 986
    .local v3, "r":Landroid/util/Range;
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v12, v9, :cond_2

    .line 987
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hfr"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hsr"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_2
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 991
    .end local v3    # "r":Landroid/util/Range;
    .end local v4    # "range":[Landroid/util/Range;
    :catch_0
    move-exception v0

    .line 992
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v9, "SnapCam_SettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HFR is not supported for this resolution "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v9, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    array-length v9, v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    .line 995
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    array-length v9, v9

    if-ge v1, v9, :cond_0

    .line 996
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hfr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 998
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    add-int/lit8 v11, v1, 0x1

    aget v10, v10, v11

    if-gt v9, v10, :cond_4

    .line 999
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    add-int/lit8 v11, v1, 0x2

    aget v10, v10, v11

    if-gt v9, v10, :cond_4

    .line 1000
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hsr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_4
    add-int/lit8 v1, v1, 0x3

    goto :goto_1
.end method

.method private getSupportedIso(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1303
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 1305
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    .local v2, "supportedIso":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "auto"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    if-eqz v1, :cond_1

    .line 1309
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1310
    .local v0, "max":I
    const/16 v3, 0x32

    .line 1311
    .local v3, "value":I
    :goto_0
    if-gt v3, v0, :cond_2

    .line 1312
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_0
    add-int/lit8 v3, v3, 0x32

    goto :goto_0

    .line 1318
    .end local v0    # "max":I
    .end local v3    # "value":I
    :cond_1
    const-string v4, "SnapCam_SettingsManager"

    const-string v5, "Supported ISO range is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_2
    return-object v2
.end method

.method private getSupportedPictureSize(I)Ljava/util/List;
    .locals 8
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x100

    .line 1137
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1139
    .local v2, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v2, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    .line 1140
    .local v4, "sizes":[Landroid/util/Size;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getQcfaPrefEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getIsSupportedQcfa(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getSupportedQcfaDimension(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_0
    if-eqz v4, :cond_1

    .line 1147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 1148
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1153
    .local v0, "highResSizes":[Landroid/util/Size;
    if-eqz v0, :cond_2

    .line 1154
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1155
    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1159
    .end local v1    # "i":I
    :cond_2
    return-object v3
.end method

.method private getSupportedRedeyeReduction(I)Ljava/util/List;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1225
    .local v0, "flashModes":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v2, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1227
    aget v3, v0, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1228
    const-string v3, "off"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    const-string v3, "on"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_0
    return-object v2

    .line 1226
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSupportedSceneModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1254
    .local v2, "sceneModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "0"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-boolean v3, p0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    if-eqz v3, :cond_0

    const-string v3, "100"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_0
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "101"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1258
    :cond_1
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    const-string v3, "102"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    :cond_2
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    const-string v3, "103"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    :cond_3
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_4

    const-string v3, "104"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_4
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p1, :cond_5

    const-string v3, "105"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_5
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "106"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    :cond_6
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "107"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    :cond_7
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->isSupportedStatic()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "108"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    :cond_8
    const-string v3, "109"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    const-string v3, "110"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_9

    aget v0, v2, v3

    .line 1268
    .local v0, "mode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1270
    .end local v0    # "mode":I
    :cond_9
    return-object v1
.end method

.method private getSupportedVideoEncoders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v1, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1350
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v3

    .line 1351
    .local v3, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1352
    .local v2, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v5, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    invoke-static {v5}, Lcom/android/camera/util/SettingTranslation;->getVideoEncoder(I)Ljava/lang/String;

    move-result-object v0

    .line 1353
    if-eqz v0, :cond_0

    .line 1354
    invoke-direct {p0, v2}, Lcom/android/camera/SettingsManager;->isCurrentVideoResolutionSupportedByEncoder(Landroid/media/EncoderCapabilities$VideoEncoderCap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1355
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1359
    .end local v2    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_1
    return-object v1
.end method

.method private getSupportedVideoSize(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1180
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1182
    .local v1, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v5, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    .line 1183
    .local v4, "sizes":[Landroid/util/Size;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 1185
    sget-object v5, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1186
    sget-object v5, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1187
    .local v2, "profile":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 1188
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    .end local v2    # "profile":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    :cond_1
    return-object v3
.end method

.method private getSupportedWhiteBalanceModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1244
    .local v2, "whiteBalanceModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v2, v3

    .line 1246
    .local v0, "mode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1248
    .end local v0    # "mode":I
    :cond_0
    return-object v1
.end method

.method private getSupportedZoomLevel(I)Ljava/util/List;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1386
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1388
    .local v0, "maxZoom":F
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v1, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "zoomLevel":I
    :goto_0
    int-to-float v3, v2

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 1390
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1392
    :cond_0
    return-object v1
.end method

.method private initDependencyTable()V
    .locals 9

    .prologue
    .line 330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v8}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 331
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v8, v2}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ListPreference;

    .line 332
    .local v5, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "baseKey":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, "value":Ljava/lang/String;
    invoke-direct {p0, v0, v7}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 336
    .local v1, "dependency":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 338
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 339
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 340
    .local v3, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v8, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 341
    if-eqz v5, :cond_0

    .line 342
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 343
    .local v6, "set":Ljava/util/Set;
    if-nez v6, :cond_1

    .line 344
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "set":Ljava/util/Set;
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 346
    .restart local v6    # "set":Ljava/util/Set;
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 330
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "set":Ljava/util/Set;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "baseKey":Ljava/lang/String;
    .end local v1    # "dependency":Lorg/json/JSONObject;
    .end local v5    # "pref":Lcom/android/camera/ListPreference;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private initializeValueMap()V
    .locals 15

    .prologue
    .line 354
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v9, "processLater":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v13, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v13}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 356
    iget-object v13, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v13, v4}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ListPreference;

    .line 357
    .local v8, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "key":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 359
    .local v10, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v13

    if-eqz v13, :cond_0

    .line 360
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_0
    new-instance v12, Lcom/android/camera/SettingsManager$Values;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v12, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v13, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 365
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "pref":Lcom/android/camera/ListPreference;
    .end local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "values":Lcom/android/camera/SettingsManager$Values;
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 366
    .local v6, "keyToProcess":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 367
    .local v2, "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "dependentKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 369
    .local v11, "value":Ljava/lang/String;
    invoke-direct {p0, v1, v11}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 371
    .local v0, "dependencyList":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 373
    .local v7, "newValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 378
    new-instance v12, Lcom/android/camera/SettingsManager$Values;

    invoke-virtual {p0, v6}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14, v7}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .restart local v12    # "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v14, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v14, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 374
    .end local v12    # "values":Lcom/android/camera/SettingsManager$Values;
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v0    # "dependencyList":Lorg/json/JSONObject;
    .end local v1    # "dependentKey":Ljava/lang/String;
    .end local v2    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "keyToProcess":Ljava/lang/String;
    .end local v7    # "newValue":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private isCurrentVideoResolutionSupportedByEncoder(Landroid/media/EncoderCapabilities$VideoEncoderCap;)Z
    .locals 8
    .param p1, "encoderCap"    # Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "supported":Z
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera2_video_quality_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 1326
    .local v2, "videoQuality":Lcom/android/camera/ListPreference;
    if-nez v2, :cond_0

    move v1, v0

    .line 1344
    .end local v0    # "supported":Z
    .local v1, "supported":I
    :goto_0
    return v1

    .line 1327
    .end local v1    # "supported":I
    .restart local v0    # "supported":Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1328
    .local v4, "videoSizeStr":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1329
    invoke-direct {p0, v4}, Lcom/android/camera/SettingsManager;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    .line 1331
    .local v3, "videoSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    if-gt v5, v6, :cond_1

    .line 1332
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    if-lt v5, v6, :cond_1

    .line 1333
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    if-gt v5, v6, :cond_1

    .line 1334
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    if-ge v5, v6, :cond_3

    .line 1335
    :cond_1
    const-string v5, "SnapCam_SettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Codec = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", capabilities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mMinFrameWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mMinFrameHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mMaxFrameWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mMaxFrameHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "videoSize":Landroid/util/Size;
    :cond_2
    :goto_1
    move v1, v0

    .line 1344
    .restart local v1    # "supported":I
    goto/16 :goto_0

    .line 1341
    .end local v1    # "supported":I
    .restart local v3    # "videoSize":Landroid/util/Size;
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isFlashAvailable(I)Z
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private notifyListeners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SettingsManager$Listener;

    .line 484
    .local v0, "listener":Lcom/android/camera/SettingsManager$Listener;
    invoke-interface {v0, p1}, Lcom/android/camera/SettingsManager$Listener;->onSettingsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 486
    .end local v0    # "listener":Lcom/android/camera/SettingsManager$Listener;
    :cond_0
    return-void
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1599
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1600
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 1601
    .local v5, "size":I
    new-array v0, v5, [B

    .line 1602
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 1603
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1604
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1605
    .local v4, "json":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1611
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "size":I
    :goto_0
    return-object v6

    .line 1606
    :catch_0
    move-exception v2

    .line 1607
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 1608
    goto :goto_0

    .line 1609
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1610
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v6, v7

    .line 1611
    goto :goto_0
.end method

.method private parseSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 323
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 324
    .local v1, "indexX":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 325
    .local v2, "width":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, "height":I
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method private removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1011
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1012
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1013
    invoke-virtual {p1, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 1014
    .local v0, "child":Lcom/android/camera/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1015
    check-cast v3, Lcom/android/camera/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1025
    .end local v0    # "child":Lcom/android/camera/CameraPreference;
    :goto_1
    return v3

    .line 1019
    .restart local v0    # "child":Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 1020
    .end local v0    # "child":Lcom/android/camera/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1021
    invoke-virtual {p1, v1}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 1022
    goto :goto_1

    .line 1012
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1397
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1399
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 1401
    :cond_0
    return-void
.end method

.method private runTimeUpdateDependencyOptions(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 805
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera2_video_quality_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterHFROptions()V

    .line 807
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterVideoEncoderOptions()V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterChromaflashPictureSizeOptions()V

    goto :goto_0
.end method

.method private setFocusValue(Ljava/lang/String;F)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 507
    const/4 v3, 0x0

    .line 508
    .local v3, "result":Z
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-static {v5, v6}, Lcom/android/camera/ComboPreferences;->getLocalSharedPreferencesName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "prefName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 511
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 512
    .local v2, "prefValue":F
    cmpl-float v5, v2, p2

    if-eqz v5, :cond_0

    .line 513
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    const/4 v3, 0x1

    .line 518
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v3
.end method

.method private setLocalIdAndInitialize(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 301
    iput p1, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    .line 302
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 304
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, "inflater":Lcom/android/camera/PreferenceInflater;
    const v2, 0x7f060001

    .line 306
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PreferenceGroup;

    iput-object v2, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 307
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    .line 309
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/CaptureModule;->hfrSizeList:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->filterPreferences(I)V

    .line 317
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->initDependencyTable()V

    .line 318
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->initializeValueMap()V

    .line 319
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterChromaflashPictureSizeOptions()V

    .line 320
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBackDependency(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p2, "remove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "add":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 459
    .local v0, "c":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "currentKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 461
    .local v2, "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    .end local v0    # "c":Ljava/lang/CharSequence;
    .end local v1    # "currentKey":Ljava/lang/String;
    .end local v2    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 464
    .restart local v0    # "c":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .restart local v1    # "currentKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 466
    .restart local v2    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 467
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 468
    .restart local v2    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    .end local v0    # "c":Ljava/lang/CharSequence;
    .end local v1    # "currentKey":Ljava/lang/String;
    .end local v2    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method private updateMapAndNotify(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 568
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->checkDependencyAndUpdate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 570
    .local v0, "changed":Ljava/util/List;
    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->runTimeUpdateDependencyOptions(Lcom/android/camera/ListPreference;)V

    .line 572
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->notifyListeners(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public destroyInstance()V
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    .line 253
    :cond_0
    return-void
.end method

.method public getCurrentCameraId()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    return v0
.end method

.method public getDependentKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1578
    const/4 v2, 0x0

    .line 1579
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "pref_camera2_video_quality_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1580
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "pref_camera2_hfr_key"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    :cond_0
    return-object v2

    .line 1583
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1584
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1585
    .local v0, "dependencies":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1586
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1588
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1589
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDisabledList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 258
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/SettingsManager$Values;

    .line 260
    .local v3, "value":Lcom/android/camera/SettingsManager$Values;
    iget-object v5, v3, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 261
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/android/camera/SettingsManager$Values;
    :cond_1
    return-object v2
.end method

.method public getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 581
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 584
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 589
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 592
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExposureCompensationEntries()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_exposure_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 854
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 855
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getExposureCompensationEntryValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 859
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_exposure_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 860
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 861
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getFilteredKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getFocusValue(Ljava/lang/String;)F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/ComboPreferences;->getLocalSharedPreferencesName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "prefName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 525
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    return v2
.end method

.method public getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 6
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "targetRate"    # I

    .prologue
    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "resolutionFpsEncoder":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1212
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1219
    .local v0, "bitRate":I
    :goto_0
    return v0

    .line 1213
    .end local v0    # "bitRate":I
    :cond_0
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1214
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "bitRate":I
    goto :goto_0

    .line 1216
    .end local v0    # "bitRate":I
    :cond_1
    const-string v3, "SnapCam_SettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No pre-defined bitrate for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget v3, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v3, p2

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v0, v3, v4

    .restart local v0    # "bitRate":I
    goto :goto_0
.end method

.method public getInitialCameraId(Landroid/content/SharedPreferences;)I
    .locals 7
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 607
    const-string v4, "pref_camera2_switch_camera_key"

    const-string v5, "-1"

    .line 608
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 607
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 609
    .local v2, "switchId":I
    sput v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 610
    const-string v4, "SnapCam_SettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWITCH_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    move v0, v2

    .line 617
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    const-string v4, "pref_camera2_id_key"

    const-string v5, "0"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 614
    .local v0, "frontBackId":I
    sget v4, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    if-eq v0, v4, :cond_0

    .line 615
    const-string v4, "pref_camera2_mono_only_key"

    const-string v5, "off"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "monoOnly":Ljava/lang/String;
    const-string v4, "off"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 617
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    goto :goto_0
.end method

.method public getIsSupportedQcfa(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1444
    const/4 v0, 0x0

    .line 1446
    .local v0, "isSupportQcfa":B
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/CaptureModule;->IS_SUPPORT_QCFA_SENSOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1450
    :goto_0
    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1448
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxZoom(I)F
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxZoom(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 1039
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1040
    .local v1, "zoomMax":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1041
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getMaxZoom(I)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1042
    goto :goto_0

    .line 1043
    .end local v0    # "id":I
    :cond_0
    return v1
.end method

.method public getMinimumFocusDistance(I)F
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1238
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/PreferenceGroup;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method public getQcfaPrefEnabled()Z
    .locals 2

    .prologue
    .line 1436
    const-string v1, "pref_camera2_qcfa_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "qcfa":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    const/4 v1, 0x1

    .line 1440
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;I)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 597
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    packed-switch p2, :pswitch_data_0

    .line 603
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 599
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v1

    goto :goto_0

    .line 601
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSensorActiveArraySize(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStreamConfigurationMap(I)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1289
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object v0
.end method

.method public getSupportedAntiBandingLevelAvailableModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1480
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1482
    .local v0, "antiBandingLevelAvailableModes":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .local v2, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 1484
    .local v1, "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1486
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public getSupportedColorEffects(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1295
    .local v0, "flashModes":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v2, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 1297
    .local v1, "mode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1299
    .end local v1    # "mode":I
    :cond_0
    return-object v2
.end method

.method public getSupportedHdrAvailableModes(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1499
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "enable"

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string v5, "disable"

    aput-object v5, v0, v4

    .line 1500
    .local v0, "data":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v2, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1502
    .local v1, "i":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1504
    .end local v1    # "i":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getSupportedHighSpeedVideoFPSRange(ILandroid/util/Size;)[Landroid/util/Range;
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "videoSize"    # Landroid/util/Size;

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1204
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedHighSpeedVideoSize(I)[Landroid/util/Size;
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1198
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedHistogramAvailableModes(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1490
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "enable"

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string v5, "disable"

    aput-object v5, v0, v4

    .line 1491
    .local v0, "data":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .local v2, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1493
    .local v1, "i":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1495
    .end local v1    # "i":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getSupportedInstantAecAvailableModes(I)Ljava/util/List;
    .locals 8
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1415
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v3, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Lcom/android/camera/CaptureModule;->InstantAecAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1420
    .local v2, "instantAecAvailableModes":[I
    if-nez v2, :cond_1

    .line 1421
    const/4 v3, 0x0

    .line 1432
    .end local v2    # "instantAecAvailableModes":[I
    .end local v3    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 1423
    .restart local v2    # "instantAecAvailableModes":[I
    .restart local v3    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget v1, v2, v4

    .line 1424
    .local v1, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1423
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1426
    .end local v1    # "i":I
    .end local v2    # "instantAecAvailableModes":[I
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "SnapCam_SettingsManager"

    const-string v5, "Supported instant aec modes is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1428
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1429
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "SnapCam_SettingsManager"

    const-string v5, "Supported instant aec modes is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSupportedNoiseReductionModes(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1373
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1375
    .local v2, "noiseReduction":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 1377
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget v0, v2, v4

    .line 1378
    .local v0, "mode":I
    invoke-static {v0}, Lcom/android/camera/util/SettingTranslation;->getNoiseReduction(I)Ljava/lang/String;

    move-result-object v3

    .line 1379
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1382
    .end local v0    # "mode":I
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedOutputSize(II)[Landroid/util/Size;
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "format"    # I

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1170
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedOutputSize(ILjava/lang/Class;)[Landroid/util/Size;
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "cl"    # Ljava/lang/Class;

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1176
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedQcfaDimension(I)Ljava/lang/String;
    .locals 5
    .param p1, "cameraId"    # I

    .prologue
    .line 1454
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/CaptureModule;->QCFA_SUPPORT_DIMENSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1456
    .local v1, "qcfaDimension":[I
    if-nez v1, :cond_0

    .line 1457
    const/4 v3, 0x0

    .line 1466
    :goto_0
    return-object v3

    .line 1459
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1460
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1461
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1462
    if-nez v0, :cond_1

    .line 1463
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1466
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getSupportedSaturationLevelAvailableModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    const/16 v3, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 1472
    .local v2, "saturationLevelAvailableModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v2, v3

    .line 1474
    .local v0, "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1476
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 1471
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public getSupportedThumbnailSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SettingsManager$Values;

    .line 494
    .local v0, "values":Lcom/android/camera/SettingsManager$Values;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 496
    :goto_0
    return-object v1

    .line 495
    :cond_0
    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->value:Ljava/lang/String;

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValueIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 501
    .local v0, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 503
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getValuesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/SettingsManager$Values;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 289
    const-string v1, "SnapCam_SettingsManager"

    const-string v2, "SettingsManager init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->getInitialCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 291
    .local v0, "cameraId":I
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->setLocalIdAndInitialize(I)V

    .line 292
    return-void
.end method

.method public isAutoExposureRegionSupported(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1078
    .local v0, "maxAERegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoExposureRegionSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1060
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1061
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->isAutoExposureRegionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1062
    const/4 v1, 0x0

    .line 1064
    .end local v0    # "id":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAutoFocusRegionSupported(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1084
    .local v0, "maxAfRegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoFocusRegionSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1053
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->isAutoFocusRegionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    const/4 v1, 0x0

    .line 1056
    .end local v0    # "id":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBsgcAvailable(I)Z
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 1116
    const/4 v2, 0x0

    .line 1118
    .local v2, "ret":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Lcom/android/camera/CaptureModule;->bsgcAvailable:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1119
    .local v0, "bsgc_available":B
    if-ne v0, v4, :cond_0

    move v2, v4

    .line 1123
    .end local v0    # "bsgc_available":B
    :goto_0
    return v2

    .line 1119
    .restart local v0    # "bsgc_available":B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1120
    .end local v0    # "bsgc_available":B
    :catch_0
    move-exception v1

    .line 1121
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCamera2HDRSupport()Z
    .locals 2

    .prologue
    .line 1513
    const-string v1, "pref_camera2_hdr_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFaceDetectionSupported(I)Z
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1104
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1105
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1106
    .local v0, "faceDetection":[I
    if-eqz v0, :cond_1

    .line 1107
    array-length v5, v0

    move v2, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget v1, v0, v2

    .line 1108
    .local v1, "value":I
    if-ne v1, v3, :cond_0

    move v2, v3

    .line 1112
    .end local v1    # "value":I
    :goto_1
    return v2

    .line 1107
    .restart local v1    # "value":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "value":I
    :cond_1
    move v2, v4

    .line 1112
    goto :goto_1
.end method

.method public isFacingFront(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1128
    .local v0, "facing":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedFocus(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1096
    .local v0, "focusDistance":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1097
    :cond_0
    const/4 v1, 0x1

    .line 1099
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFlashSupported(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    const-string v1, "pref_camera2_flashmode_key"

    .line 1133
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdrScene(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 1088
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/CaptureModule;->isHdrScene:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1090
    .local v0, "hdrScene":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHistogramSupport()Z
    .locals 2

    .prologue
    .line 1508
    const-string v1, "pref_camera2_histogram_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverriden(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SettingsManager$Values;

    .line 530
    .local v0, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZSLInAppEnabled()Z
    .locals 4

    .prologue
    .line 1528
    const-string v2, "pref_camera2_zsl_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e02fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, "appZSLValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1531
    const/4 v2, 0x1

    .line 1533
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZSLInHALEnabled()Z
    .locals 4

    .prologue
    .line 1518
    const-string v2, "pref_camera2_zsl_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e02fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, "halZSLValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1521
    const/4 v2, 0x1

    .line 1523
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZoomSupported(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1069
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->isZoomSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1070
    const/4 v1, 0x0

    .line 1072
    .end local v0    # "id":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->checkDependencyAndUpdate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "changed":Ljava/util/List;
    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->runTimeUpdateDependencyOptions(Lcom/android/camera/ListPreference;)V

    .line 273
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->notifyListeners(Ljava/util/List;)V

    goto :goto_0
.end method

.method public registerListener(Lcom/android/camera/SettingsManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/SettingsManager$Listener;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public reinit(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 295
    const-string v0, "SnapCam_SettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsManager reinit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->setLocalIdAndInitialize(I)V

    .line 297
    return-void
.end method

.method public restoreSettings()V
    .locals 0

    .prologue
    .line 1645
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->clearPerCameraPreferences()V

    .line 1646
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->init()V

    .line 1647
    return-void
.end method

.method public setFocusDistance(Ljava/lang/String;FF)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "minFocus"    # F

    .prologue
    .line 557
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SettingsManager;->setFocusValue(Ljava/lang/String;F)Z

    move-result v0

    .line 558
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    new-instance v3, Lcom/android/camera/SettingsManager$Values;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-float v5, p2, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .local v3, "values":Lcom/android/camera/SettingsManager$Values;
    new-instance v2, Lcom/android/camera/SettingsManager$SettingState;

    const-string v4, "pref_camera2_focus_distance_key"

    invoke-direct {v2, v4, v3}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    .line 562
    .local v2, "ss":Lcom/android/camera/SettingsManager$SettingState;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->notifyListeners(Ljava/util/List;)V

    .line 565
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    .end local v2    # "ss":Lcom/android/camera/SettingsManager$SettingState;
    .end local v3    # "values":Lcom/android/camera/SettingsManager$Values;
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 535
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v1

    .line 539
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->updateMapAndNotify(Lcom/android/camera/ListPreference;)V

    .line 541
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setValueIndex(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 550
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 552
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->updateMapAndNotify(Lcom/android/camera/ListPreference;)V

    .line 554
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/android/camera/SettingsManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/SettingsManager$Listener;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public updateQcfaPictureSize()V
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_picturesize_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 278
    .local v0, "picturePref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v1

    .line 283
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->getSupportedPictureSize(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    .line 286
    :cond_0
    return-void
.end method
