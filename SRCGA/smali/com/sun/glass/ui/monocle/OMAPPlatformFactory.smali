.class Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
.super Lcom/sun/glass/ui/monocle/NativePlatformFactory;
.source "OMAPPlatformFactory.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/monocle/OMAPPlatform;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/OMAPPlatform;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    return-object v0
.end method

.method protected getMajorVersion()I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    return v0
.end method

.method protected getMinorVersion()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    return v0
.end method

.method protected matches()Z
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "/sys/devices/omapdss"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPPlatformFactory;
    return v0
.end method
