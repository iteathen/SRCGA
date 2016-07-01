.class public final Lcom/sun/glass/ui/MenuBar;
.super Ljava/lang/Object;
.source "MenuBar.java"


# instance fields
.field private final delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

.field private final menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuBar;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 40
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/PlatformFactory;->createMenuBarDelegate(Lcom/sun/glass/ui/MenuBar;)Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    .line 41
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    invoke-interface {v1}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->createMenuBar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "MenuBar creation error."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/glass/ui/Menu;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuBar;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 52
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/MenuBar;->insert(Lcom/sun/glass/ui/Menu;I)V

    .line 53
    return-void
.end method

.method public getMenus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Menu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuBar;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 90
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuBar;
    return-object v0
.end method

.method getNativeMenu()J
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    invoke-interface {v1}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->getNativeMenu()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuBar;
    return-wide v0
.end method

.method public insert(Lcom/sun/glass/ui/Menu;I)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuBar;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 57
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 58
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v6

    move v7, v2

    invoke-interface {v5, v6, v7}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move v6, v2

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    :cond_0
    move-object v5, v3

    monitor-exit v5

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public remove(I)V
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuBar;
    move v1, p1

    .local v1, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 66
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 67
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/Menu;

    move-object v3, v5

    .line 68
    .local v3, "menu":Lcom/sun/glass/ui/Menu;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v6

    move v7, v1

    invoke-interface {v5, v6, v7}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 71
    :cond_0
    move-object v5, v2

    monitor-exit v5

    .line 72
    return-void

    .line 71
    .end local v3    # "menu":Lcom/sun/glass/ui/Menu;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public remove(Lcom/sun/glass/ui/Menu;)V
    .locals 9

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuBar;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 76
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 77
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 78
    .local v3, "pos":I
    move v5, v3

    if-ltz v5, :cond_0

    .line 79
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v6

    move v7, v3

    invoke-interface {v5, v6, v7}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 85
    :cond_0
    move-object v5, v2

    monitor-exit v5

    .line 86
    return-void

    .line 85
    .end local v3    # "pos":I
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method
