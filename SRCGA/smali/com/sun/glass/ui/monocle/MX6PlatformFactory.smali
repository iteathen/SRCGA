.class Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
.super Lcom/sun/glass/ui/monocle/NativePlatformFactory;
.source "MX6PlatformFactory.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/monocle/MX6Platform;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/MX6Platform;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    return-object v0
.end method

.method protected getMajorVersion()I
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    return v0
.end method

.method protected getMinorVersion()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    return v0
.end method

.method protected matches()Z
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "/sys/devices/platform/mxc_sdc_fb.0"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "/sys/bus/platform/drivers/mxc_sdc_fb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 37
    .local v1, "retval":Z
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    return v0

    .line 36
    .end local v1    # "retval":Z
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MX6PlatformFactory;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
