.class Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
.super Ljava/lang/Object;
.source "GtkMenuDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public createMenu(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move v2, p2

    .local v2, "enabled":Z
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, p1

    .local v1, "item":Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    move v2, p2

    .local v2, "pos":I
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, p1

    .local v1, "item":Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    move v2, p2

    .local v2, "pos":I
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method

.method public setEnabled(Z)Z
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move v1, p1

    .local v1, "enabled":Z
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method

.method public setTitle(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuDelegate;
    return v0
.end method
