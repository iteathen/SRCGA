.class Lcom/sun/glass/ui/monocle/HeadlessPlatform;
.super Lcom/sun/glass/ui/monocle/NativePlatform;
.source "HeadlessPlatform.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCursor()Lcom/sun/glass/ui/monocle/NativeCursor;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/NullCursor;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/NullCursor;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessPlatform;
    return-object v0
.end method

.method protected createInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;-><init>(Z)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessPlatform;
    return-object v0
.end method

.method protected createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/HeadlessScreen;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/HeadlessScreen;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessPlatform;
    return-object v0
.end method
