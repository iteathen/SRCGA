.class Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
.super Lcom/sun/glass/ui/monocle/NativePlatformFactory;
.source "VNCPlatformFactory.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/monocle/VNCPlatform;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/VNCPlatform;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    return-object v0
.end method

.method protected getMajorVersion()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    return v0
.end method

.method protected getMinorVersion()I
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    return v0
.end method

.method protected matches()Z
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatformFactory;
    return v0
.end method
