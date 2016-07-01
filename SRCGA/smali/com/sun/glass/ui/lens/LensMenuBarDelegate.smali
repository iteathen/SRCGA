.class final Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
.super Ljava/lang/Object;
.source "LensMenuBarDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuBarDelegate;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMenuBar()Z
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Not implemented"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    return v0
.end method

.method public getNativeMenu()J
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Not implemented"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 50
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    return-wide v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 40
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Not implemented"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensMenuBarDelegate;
    return v0
.end method
