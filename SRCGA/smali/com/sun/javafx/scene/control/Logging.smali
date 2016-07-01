.class public Lcom/sun/javafx/scene/control/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field private static controlsLogger:Lsun/util/logging/PlatformLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/scene/control/Logging;->controlsLogger:Lsun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/Logging;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getControlsLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/scene/control/Logging;->controlsLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "javafx.scene.control"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/Logging;->controlsLogger:Lsun/util/logging/PlatformLogger;

    .line 49
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/control/Logging;->controlsLogger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method
