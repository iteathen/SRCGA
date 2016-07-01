.class public Lcom/sun/media/jfxmediaimpl/HostUtils;
.super Ljava/lang/Object;
.source "HostUtils.java"


# static fields
.field private static embedded:Z

.field private static is64bit:Z

.field private static osArch:Ljava/lang/String;

.field private static osName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->is64bit:Z

    .line 41
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->embedded:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/HostUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->lambda$static$3()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static is64Bit()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->is64bit:Z

    return v0
.end method

.method public static isEmbedded()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->embedded:Z

    return v0
.end method

.method public static isIOS()Z
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osName:Ljava/lang/String;

    const-string v1, "ios"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLinux()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osName:Ljava/lang/String;

    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMacOSX()Z
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osName:Ljava/lang/String;

    const-string v1, "mac os x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWindows()Z
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osName:Ljava/lang/String;

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$static$3()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 42
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osName:Ljava/lang/String;

    .line 43
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osArch:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osArch:Ljava/lang/String;

    const-string v1, "x64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osArch:Ljava/lang/String;

    const-string v1, "x86_64"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->osArch:Ljava/lang/String;

    const-string v1, "ia64"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/media/jfxmediaimpl/HostUtils;->is64bit:Z

    .line 49
    const-string v0, "com.sun.javafx.isEmbedded"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
