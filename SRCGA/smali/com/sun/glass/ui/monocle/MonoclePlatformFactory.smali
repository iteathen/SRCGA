.class public Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
.super Lcom/sun/glass/ui/PlatformFactory;
.source "MonoclePlatformFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/PlatformFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createApplication()Lcom/sun/glass/ui/Application;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/monocle/MonocleApplication;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/MonocleApplication;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    return-object v0
.end method

.method public createClipboardDelegate()Lcom/sun/glass/ui/delegate/ClipboardDelegate;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/monocle/MonocleClipboardDelegate;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/MonocleClipboardDelegate;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    return-object v0
.end method

.method public createMenuBarDelegate(Lcom/sun/glass/ui/MenuBar;)Lcom/sun/glass/ui/delegate/MenuBarDelegate;
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    move-object v1, p1

    .local v1, "menubar":Lcom/sun/glass/ui/MenuBar;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public createMenuDelegate(Lcom/sun/glass/ui/Menu;)Lcom/sun/glass/ui/delegate/MenuDelegate;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public createMenuItemDelegate(Lcom/sun/glass/ui/MenuItem;)Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonoclePlatformFactory;
    move-object v1, p1

    .local v1, "menuItem":Lcom/sun/glass/ui/MenuItem;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
