.class Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;
.super Lcom/sun/glass/ui/Menu$EventHandler;
.source "GlassMenuEventHandler.java"


# instance fields
.field private menuBase:Lcom/sun/javafx/menu/MenuBase;

.field private menuOpen:Z


# direct methods
.method public constructor <init>(Lcom/sun/javafx/menu/MenuBase;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;
    move-object v1, p1

    .local v1, "mb":Lcom/sun/javafx/menu/MenuBase;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/Menu$EventHandler;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;->menuBase:Lcom/sun/javafx/menu/MenuBase;

    .line 38
    return-void
.end method


# virtual methods
.method public handleMenuClosed(Lcom/sun/glass/ui/Menu;J)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    move-wide v2, p2

    .local v2, "time":J
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;->menuBase:Lcom/sun/javafx/menu/MenuBase;

    invoke-interface {v4}, Lcom/sun/javafx/menu/MenuBase;->hide()V

    .line 47
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;->menuOpen:Z

    .line 48
    return-void
.end method

.method public handleMenuOpening(Lcom/sun/glass/ui/Menu;J)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    move-wide v2, p2

    .local v2, "time":J
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;->menuBase:Lcom/sun/javafx/menu/MenuBase;

    invoke-interface {v4}, Lcom/sun/javafx/menu/MenuBase;->show()V

    .line 42
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;->menuOpen:Z

    .line 43
    return-void
.end method

.method protected isMenuOpen()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;->menuOpen:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;
    return v0
.end method
