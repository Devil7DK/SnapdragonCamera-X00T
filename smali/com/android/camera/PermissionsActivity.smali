.class public Lcom/android/camera/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static PERMISSION_REQUEST_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PermissionsActivity"


# instance fields
.field private mCriticalPermissionDenied:Z

.field private mFlagHasCameraPermission:Z

.field private mFlagHasMicrophonePermission:Z

.field private mFlagHasStoragePermission:Z

.field private mIndexPermissionRequestCamera:I

.field private mIndexPermissionRequestLocation:I

.field private mIndexPermissionRequestMicrophone:I

.field private mIndexPermissionRequestStorageRead:I

.field private mIndexPermissionRequestStorageWrite:I

.field private mIntent:Landroid/content/Intent;

.field private mIsReturnResult:Z

.field private mNumPermissionsToRequest:I

.field private mShouldRequestCameraPermission:Z

.field private mShouldRequestLocationPermission:Z

.field private mShouldRequestMicrophonePermission:Z

.field private mShouldRequestStoragePermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/PermissionsActivity;->PERMISSION_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private buildPermissionsRequest()V
    .locals 3

    .prologue
    .line 104
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    new-array v1, v2, [Ljava/lang/String;

    .line 105
    .local v1, "permissionsToRequest":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .local v0, "permissionsRequestIndex":I
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestCameraPermission:Z

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v0

    .line 109
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestCamera:I

    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 112
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestMicrophonePermission:Z

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v0

    .line 114
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestMicrophone:I

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestStoragePermission:Z

    if-eqz v2, :cond_2

    .line 118
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    .line 120
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageWrite:I

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    .line 124
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageRead:I

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 128
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    if-eqz v2, :cond_3

    .line 129
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v0

    .line 131
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestLocation:I

    .line 133
    :cond_3
    sget v2, Lcom/android/camera/PermissionsActivity;->PERMISSION_REQUEST_CODE:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/PermissionsActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method private checkPermissions()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 59
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestCameraPermission:Z

    .line 64
    :goto_0
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 67
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestMicrophonePermission:Z

    .line 72
    :goto_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    :cond_0
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 77
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestStoragePermission:Z

    .line 82
    :goto_2
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 85
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    .line 88
    :cond_1
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    if-eqz v2, :cond_5

    .line 89
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->buildPermissionsRequest()V

    .line 101
    :goto_3
    return-void

    .line 61
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasCameraPermission:Z

    goto :goto_0

    .line 69
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasMicrophonePermission:Z

    goto :goto_1

    .line 79
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasStoragePermission:Z

    goto :goto_2

    .line 92
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    if-nez v2, :cond_6

    .line 93
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location_request"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsSuccess()V

    goto :goto_3
.end method

.method private handlePermissionsFailure()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PermissionsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PermissionsActivity$2;-><init>(Lcom/android/camera/PermissionsActivity;)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PermissionsActivity$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PermissionsActivity$1;-><init>(Lcom/android/camera/PermissionsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 236
    return-void
.end method

.method private handlePermissionsSuccess()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->setRequestPermissionShow()V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    .line 204
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    const-class v2, Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/camera/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->finish()V

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/camera/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->finish()V

    goto :goto_0
.end method

.method private setRequestPermissionShow()V
    .locals 5

    .prologue
    .line 239
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 240
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "request_permission"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    .local v1, "isRequestShown":Z
    if-nez v1, :cond_0

    .line 242
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "request_permission"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    .line 47
    iget-boolean v0, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    if-nez v0, :cond_0

    .line 48
    iput v1, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 49
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->checkPermissions()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestCameraPermission:Z

    if-eqz v2, :cond_0

    .line 141
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestCamera:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_5

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestCamera:I

    aget v2, p3, v2

    if-nez v2, :cond_5

    .line 144
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasCameraPermission:Z

    .line 149
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestMicrophonePermission:Z

    if-eqz v2, :cond_1

    .line 150
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestMicrophone:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_6

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestMicrophone:I

    aget v2, p3, v2

    if-nez v2, :cond_6

    .line 153
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasMicrophonePermission:Z

    .line 158
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestStoragePermission:Z

    if-eqz v2, :cond_2

    .line 159
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageRead:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_7

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageWrite:I

    aget v2, p3, v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageRead:I

    aget v2, p3, v2

    if-nez v2, :cond_7

    .line 164
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasStoragePermission:Z

    .line 170
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    if-eqz v2, :cond_3

    .line 172
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location_request"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestLocation:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_3

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestLocation:I

    aget v2, p3, v2

    if-nez v2, :cond_3

    .line 186
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasCameraPermission:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasMicrophonePermission:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasStoragePermission:Z

    if-eqz v2, :cond_8

    .line 189
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location_request"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsSuccess()V

    .line 198
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    :goto_3
    return-void

    .line 146
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_0

    .line 155
    :cond_6
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_1

    .line 166
    :cond_7
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_2

    .line 195
    :cond_8
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    if-eqz v2, :cond_4

    .line 196
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsFailure()V

    goto :goto_3
.end method
