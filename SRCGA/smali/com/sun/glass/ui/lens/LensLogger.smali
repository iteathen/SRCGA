.class final Lcom/sun/glass/ui/lens/LensLogger;
.super Ljava/lang/Object;
.source "LensLogger.java"


# static fields
.field private static final logger:Lsun/util/logging/PlatformLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->initLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/lens/LensLogger;->logger:Lsun/util/logging/PlatformLogger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensLogger;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->lambda$initLogger$59()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sun/glass/ui/lens/LensLogger;->logger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method private static initLogger()Lsun/util/logging/PlatformLogger;
    .locals 5

    .prologue
    .line 39
    const-string v3, "javafx.lens"

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    move-object v0, v3

    .line 40
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 43
    .local v1, "levelString":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Lsun/util/logging/PlatformLogger$Level;->valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "logger":Lsun/util/logging/PlatformLogger;
    return-object v0

    .line 44
    .restart local v0    # "logger":Lsun/util/logging/PlatformLogger;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    goto :goto_0
.end method

.method private static synthetic lambda$initLogger$59()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    const-string v0, "log.lens"

    const-string v1, "SEVERE"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
