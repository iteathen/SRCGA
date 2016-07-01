.class Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
.super Lcom/sun/glass/ui/monocle/AcceleratedScreen;
.source "AndroidAcceleratedScreen.java"


# static fields
.field private static instance:Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;


# direct methods
.method constructor <init>([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/glass/ui/monocle/GLException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
    move-object v1, p1

    .local v1, "attributes":[I
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;-><init>([I)V

    .line 41
    move-object v2, v0

    sput-object v2, Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;->instance:Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;

    .line 42
    return-void
.end method

.method public static createEglSurface()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;->instance:Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;->instance:Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;->createSurface()V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method initPlatformLibraries()Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->initPlatformLibraries()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
    return v0
.end method

.method protected platformGetNativeDisplay()J
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
    return-wide v0
.end method

.method protected platformGetNativeWindow()J
    .locals 6

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/NativeScreen;->getNativeHandle()J

    move-result-wide v4

    move-wide v2, v4

    .line 64
    .local v2, "answer":J
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/AndroidAcceleratedScreen;
    return-wide v1
.end method
