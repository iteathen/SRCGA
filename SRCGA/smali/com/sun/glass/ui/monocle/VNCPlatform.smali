.class Lcom/sun/glass/ui/monocle/VNCPlatform;
.super Lcom/sun/glass/ui/monocle/HeadlessPlatform;
.source "VNCPlatform.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/HeadlessPlatform;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform;
    new-instance v2, Lcom/sun/glass/ui/monocle/VNCPlatform$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/VNCPlatform$1;-><init>(Lcom/sun/glass/ui/monocle/VNCPlatform;)V

    move-object v1, v2

    .line 45
    .local v1, "registry":Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatform;
    return-object v0
.end method

.method protected createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/VNCScreen;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/VNCScreen;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatform;
    return-object v0
.end method
