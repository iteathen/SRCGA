.class public Lcom/sun/javafx/util/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field private static accessibilityLogger:Lsun/util/logging/PlatformLogger;

.field private static cssLogger:Lsun/util/logging/PlatformLogger;

.field private static focusLogger:Lsun/util/logging/PlatformLogger;

.field private static inputLogger:Lsun/util/logging/PlatformLogger;

.field private static javafxLogger:Lsun/util/logging/PlatformLogger;

.field private static layoutLogger:Lsun/util/logging/PlatformLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/util/Logging;->layoutLogger:Lsun/util/logging/PlatformLogger;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/util/Logging;->focusLogger:Lsun/util/logging/PlatformLogger;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/util/Logging;->inputLogger:Lsun/util/logging/PlatformLogger;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/util/Logging;->cssLogger:Lsun/util/logging/PlatformLogger;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/util/Logging;->javafxLogger:Lsun/util/logging/PlatformLogger;

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/util/Logging;->accessibilityLogger:Lsun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/Logging;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAccessibilityLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/sun/javafx/util/Logging;->accessibilityLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 132
    const-string v0, "javafx.accessibility"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/util/Logging;->accessibilityLogger:Lsun/util/logging/PlatformLogger;

    .line 134
    :cond_0
    sget-object v0, Lcom/sun/javafx/util/Logging;->accessibilityLogger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method public static final getCSSLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sun/javafx/util/Logging;->cssLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "javafx.css"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/util/Logging;->cssLogger:Lsun/util/logging/PlatformLogger;

    .line 100
    :cond_0
    sget-object v0, Lcom/sun/javafx/util/Logging;->cssLogger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method public static final getFocusLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sun/javafx/util/Logging;->focusLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "javafx.scene.focus"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/util/Logging;->focusLogger:Lsun/util/logging/PlatformLogger;

    .line 66
    :cond_0
    sget-object v0, Lcom/sun/javafx/util/Logging;->focusLogger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method public static final getInputLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/sun/javafx/util/Logging;->inputLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "javafx.scene.input"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/util/Logging;->inputLogger:Lsun/util/logging/PlatformLogger;

    .line 83
    :cond_0
    sget-object v0, Lcom/sun/javafx/util/Logging;->inputLogger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method public static final getJavaFXLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/sun/javafx/util/Logging;->javafxLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "javafx"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/util/Logging;->javafxLogger:Lsun/util/logging/PlatformLogger;

    .line 117
    :cond_0
    sget-object v0, Lcom/sun/javafx/util/Logging;->javafxLogger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method public static final getLayoutLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/util/Logging;->layoutLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "javafx.scene.layout"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/util/Logging;->layoutLogger:Lsun/util/logging/PlatformLogger;

    .line 49
    :cond_0
    sget-object v0, Lcom/sun/javafx/util/Logging;->layoutLogger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method
