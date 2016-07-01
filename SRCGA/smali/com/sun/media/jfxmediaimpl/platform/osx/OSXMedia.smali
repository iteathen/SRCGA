.class final Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;
.super Lcom/sun/media/jfxmediaimpl/NativeMedia;
.source "OSXMedia.java"


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    .line 36
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getPlatform()Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;->getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;
    return-object v0
.end method
