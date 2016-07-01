.class public final Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
.super Lcom/sun/glass/ui/PlatformFactory;
.source "GtkPlatformFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/PlatformFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createApplication()Lcom/sun/glass/ui/Application;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/gtk/GtkApplication;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/gtk/GtkApplication;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    return-object v0
.end method

.method public createClipboardDelegate()Lcom/sun/glass/ui/delegate/ClipboardDelegate;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    new-instance v1, Lcom/sun/glass/ui/gtk/GtkClipboardDelegate;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/gtk/GtkClipboardDelegate;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    return-object v0
.end method

.method public createMenuBarDelegate(Lcom/sun/glass/ui/MenuBar;)Lcom/sun/glass/ui/delegate/MenuBarDelegate;
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    move-object v1, p1

    .local v1, "menubar":Lcom/sun/glass/ui/MenuBar;
    new-instance v2, Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;-><init>()V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    return-object v0
.end method

.method public createMenuDelegate(Lcom/sun/glass/ui/Menu;)Lcom/sun/glass/ui/delegate/MenuDelegate;
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    new-instance v2, Lcom/sun/glass/ui/gtk/GtkMenuDelegate;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/gtk/GtkMenuDelegate;-><init>()V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    return-object v0
.end method

.method public createMenuItemDelegate(Lcom/sun/glass/ui/MenuItem;)Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    move-object v1, p1

    .local v1, "item":Lcom/sun/glass/ui/MenuItem;
    new-instance v2, Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;-><init>()V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkPlatformFactory;
    return-object v0
.end method
