.class public final Lcom/sun/glass/ui/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Menu$EventHandler;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

.field private enabled:Z

.field private eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/Menu;-><init>(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move v2, p2

    .local v2, "enabled":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 71
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/Menu;->title:Ljava/lang/String;

    .line 72
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/glass/ui/Menu;->enabled:Z

    .line 73
    move-object v3, v0

    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/PlatformFactory;->createMenuDelegate(Lcom/sun/glass/ui/Menu;)Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    .line 74
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/glass/ui/delegate/MenuDelegate;->createMenu(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Menu creation error."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/glass/ui/Menu;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 119
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Menu;->insert(Lcom/sun/glass/ui/Menu;I)V

    .line 120
    return-void
.end method

.method public add(Lcom/sun/glass/ui/MenuItem;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "item":Lcom/sun/glass/ui/MenuItem;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 124
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Menu;->insert(Lcom/sun/glass/ui/MenuItem;I)V

    .line 125
    return-void
.end method

.method getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Menu;
    return-object v0
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Menu$EventHandler;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 49
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Menu;
    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 114
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Menu;
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Menu;->title:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Menu;
    return-object v0
.end method

.method public insert(Lcom/sun/glass/ui/Menu;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 129
    move-object v6, v1

    if-nez v6, :cond_0

    .line 130
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 132
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 133
    move v6, v2

    if-ltz v6, :cond_1

    move v6, v2

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 134
    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 140
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 136
    :cond_2
    move-object v6, v1

    :try_start_1
    invoke-virtual {v6}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v6

    move-object v4, v6

    .line 137
    .local v4, "menuDelegate":Lcom/sun/glass/ui/delegate/MenuDelegate;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v7, v4

    move v8, v2

    invoke-interface {v6, v7, v8}, Lcom/sun/glass/ui/delegate/MenuDelegate;->insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    move v7, v2

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    :cond_3
    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    return-void
.end method

.method public insert(Lcom/sun/glass/ui/MenuItem;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "item":Lcom/sun/glass/ui/MenuItem;
    move v2, p2

    .local v2, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 145
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 146
    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 147
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 153
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 149
    :cond_1
    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v1

    :try_start_1
    invoke-virtual {v6}, Lcom/sun/glass/ui/MenuItem;->getDelegate()Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-result-object v6

    :goto_0
    move-object v4, v6

    .line 150
    .local v4, "itemDelegate":Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v7, v4

    move v8, v2

    invoke-interface {v6, v7, v8}, Lcom/sun/glass/ui/delegate/MenuDelegate;->insert(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 151
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    move v7, v2

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    :cond_2
    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void

    .line 149
    .end local v4    # "itemDelegate":Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 93
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Menu;->enabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Menu;
    return v0
.end method

.method protected notifyMenuClosed()V
    .locals 6

    .prologue
    .line 192
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Menu;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    if-eqz v2, :cond_0

    .line 193
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    move-object v3, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Menu$EventHandler;->handleMenuClosed(Lcom/sun/glass/ui/Menu;J)V

    .line 195
    :cond_0
    return-void
.end method

.method protected notifyMenuOpening()V
    .locals 6

    .prologue
    .line 186
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Menu;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    if-eqz v2, :cond_0

    .line 187
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    move-object v3, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Menu$EventHandler;->handleMenuOpening(Lcom/sun/glass/ui/Menu;J)V

    .line 189
    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move v1, p1

    .local v1, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 158
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    monitor-enter v6

    .line 159
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 160
    .local v3, "item":Ljava/lang/Object;
    const/4 v6, 0x0

    move v4, v6

    .line 161
    .local v4, "success":Z
    move-object v6, v3

    sget-object v7, Lcom/sun/glass/ui/MenuItem;->Separator:Lcom/sun/glass/ui/MenuItem;

    if-ne v6, v7, :cond_1

    .line 162
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    const/4 v7, 0x0

    check-cast v7, Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move v8, v1

    invoke-interface {v6, v7, v8}, Lcom/sun/glass/ui/delegate/MenuDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z

    move-result v6

    move v4, v6

    .line 168
    :goto_0
    move v6, v4

    if-eqz v6, :cond_0

    .line 169
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 171
    :cond_0
    move-object v6, v2

    monitor-exit v6

    .line 172
    return-void

    .line 163
    :cond_1
    move-object v6, v3

    instance-of v6, v6, Lcom/sun/glass/ui/MenuItem;

    if-eqz v6, :cond_2

    .line 164
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v7, v3

    check-cast v7, Lcom/sun/glass/ui/MenuItem;

    invoke-virtual {v7}, Lcom/sun/glass/ui/MenuItem;->getDelegate()Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-result-object v7

    move v8, v1

    invoke-interface {v6, v7, v8}, Lcom/sun/glass/ui/delegate/MenuDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z

    move-result v6

    move v4, v6

    goto :goto_0

    .line 166
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v7, v3

    check-cast v7, Lcom/sun/glass/ui/Menu;

    invoke-virtual {v7}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v7

    move v8, v1

    invoke-interface {v6, v7, v8}, Lcom/sun/glass/ui/delegate/MenuDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v6

    move v4, v6

    goto :goto_0

    .line 171
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move v1, p1

    .local v1, "enabled":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuDelegate;->setEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/Menu;->enabled:Z

    .line 101
    :cond_0
    return-void
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Menu$EventHandler;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "eventHandler":Lcom/sun/glass/ui/Menu$EventHandler;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 54
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    .line 55
    return-void
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuDelegate;->setPixels(Lcom/sun/glass/ui/Pixels;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Menu;
    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuDelegate;->setTitle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Menu;->title:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method
