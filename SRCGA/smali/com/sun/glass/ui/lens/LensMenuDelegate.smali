.class final Lcom/sun/glass/ui/lens/LensMenuDelegate;
.super Ljava/lang/Object;
.source "LensMenuDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuDelegate;
.implements Lcom/sun/glass/ui/delegate/MenuItemDelegate;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMenu(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move v2, p2

    .local v2, "enabled":Z
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 37
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;ZZ)Z
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
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
    move/from16 v6, p6

    .local v6, "enabled":Z
    move/from16 v7, p7

    .local v7, "checked":Z
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v8

    const-string v9, "Not implemented"

    invoke-virtual {v8, v9}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 72
    const/4 v8, 0x1

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "item":Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 57
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 62
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "item":Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 67
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)Z
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Not implemented"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public setChecked(Z)Z
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move v1, p1

    .local v1, "checked":Z
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Not implemented"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public setEnabled(Z)Z
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move v1, p1

    .local v1, "enabled":Z
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Not implemented"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Not implemented"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public setShortcut(II)Z
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move v1, p1

    .local v1, "shortcutKey":I
    move v2, p2

    .local v2, "shortcutModifiers":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 82
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method

.method public setTitle(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Not implemented"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuDelegate;
    return v0
.end method
