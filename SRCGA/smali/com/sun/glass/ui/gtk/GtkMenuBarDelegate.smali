.class Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
.super Ljava/lang/Object;
.source "GtkMenuBarDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuBarDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public createMenuBar()Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    return v0
.end method

.method public getNativeMenu()J
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    return-wide v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuBarDelegate;
    return v0
.end method
