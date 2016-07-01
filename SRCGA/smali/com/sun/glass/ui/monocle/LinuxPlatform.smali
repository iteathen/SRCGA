.class Lcom/sun/glass/ui/monocle/LinuxPlatform;
.super Lcom/sun/glass/ui/monocle/NativePlatform;
.source "LinuxPlatform.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;-><init>()V

    .line 32
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxSystem;->loadLibrary()V

    .line 33
    return-void
.end method


# virtual methods
.method protected createCursor()Lcom/sun/glass/ui/monocle/NativeCursor;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/SoftwareCursor;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/SoftwareCursor;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    return-object v0
.end method

.method protected createInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;-><init>(Z)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    return-object v0
.end method

.method protected createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    :try_start_0
    new-instance v2, Lcom/sun/glass/ui/monocle/FBDevScreen;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/FBDevScreen;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 50
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v0

    .line 49
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxPlatform;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 50
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/sun/glass/ui/monocle/HeadlessScreen;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/HeadlessScreen;-><init>()V

    move-object v0, v2

    goto :goto_0
.end method
