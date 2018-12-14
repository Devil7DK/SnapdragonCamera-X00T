.class public Lcom/android/camera/app/PlaceholderManager$Session;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/PlaceholderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field outputTitle:Ljava/lang/String;

.field outputUri:Landroid/net/Uri;

.field time:J


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "timestamp"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/camera/app/PlaceholderManager$Session;->outputTitle:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    .line 49
    iput-wide p3, p0, Lcom/android/camera/app/PlaceholderManager$Session;->time:J

    .line 50
    return-void
.end method
