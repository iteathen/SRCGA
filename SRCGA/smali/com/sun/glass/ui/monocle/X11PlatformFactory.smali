.class Lcom/sun/glass/ui/monocle/X11PlatformFactory;
.super Lcom/sun/glass/ui/monocle/NativePlatformFactory;
.source "X11PlatformFactory.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/X11PlatformFactory;->lambda$matches$122()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$matches$122()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "DISPLAY"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/monocle/X11Platform;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/X11Platform;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    return-object v0
.end method

.method protected getMajorVersion()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    return v0
.end method

.method protected getMinorVersion()I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    return v0
.end method

.method protected matches()Z
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    invoke-static {}, Lcom/sun/glass/ui/monocle/X11PlatformFactory$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 40
    .local v1, "display":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/X11PlatformFactory;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
