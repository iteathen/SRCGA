.class Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
.super Ljava/lang/Object;
.source "GtkMenuItemDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuItemDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;ZZ)Z
    .locals 9

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move v3, p3

    .local v3, "shortcutKey":I
    move v4, p4

    .local v4, "shortcutModifiers":I
    move-object v5, p5

    .local v5, "pixels":Lcom/sun/glass/ui/Pixels;
    move v6, p6

    .local v6, "enabled":Z
    move/from16 v7, p7

    .local v7, "checked":Z
    const/4 v8, 0x1

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    return v0
.end method

.method public setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)Z
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move-object v1, p1

    .local v1, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    return v0
.end method

.method public setChecked(Z)Z
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move v1, p1

    .local v1, "checked":Z
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    return v0
.end method

.method public setEnabled(Z)Z
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move v1, p1

    .local v1, "enabled":Z
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    return v0
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    return v0
.end method

.method public setShortcut(II)Z
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move v1, p1

    .local v1, "shortcutKey":I
    move v2, p2

    .local v2, "shortcutModifiers":I
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    return v0
.end method

.method public setTitle(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkMenuItemDelegate;
    return v0
.end method
