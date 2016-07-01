.class public final Ljavafx/scene/web/WebEngineBuilder;
.super Ljava/lang/Object;
.source "WebEngineBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/web/WebEngine;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private confirmHandler:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private confirmHandlerSet:Z

.field private createPopupHandler:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PopupFeatures;",
            "Ljavafx/scene/web/WebEngine;",
            ">;"
        }
    .end annotation
.end field

.field private createPopupHandlerSet:Z

.field private location:Ljava/lang/String;

.field private locationSet:Z

.field private onAlert:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private onAlertSet:Z

.field private onResized:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;>;"
        }
    .end annotation
.end field

.field private onResizedSet:Z

.field private onStatusChanged:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private onStatusChangedSet:Z

.field private onVisibilityChanged:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private onVisibilityChangedSet:Z

.field private promptHandler:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PromptData;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promptHandlerSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljavafx/scene/web/WebEngineBuilder;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljavafx/scene/web/WebEngineBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/web/WebEngineBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/web/WebEngine;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "engine":Ljavafx/scene/web/WebEngine;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->confirmHandlerSet:Z

    if-eqz v2, :cond_0

    .line 70
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->confirmHandler:Ljavafx/util/Callback;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->setConfirmHandler(Ljavafx/util/Callback;)V

    .line 72
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->createPopupHandlerSet:Z

    if-eqz v2, :cond_1

    .line 73
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->createPopupHandler:Ljavafx/util/Callback;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->setCreatePopupHandler(Ljavafx/util/Callback;)V

    .line 75
    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->onAlertSet:Z

    if-eqz v2, :cond_2

    .line 76
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->onAlert:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->setOnAlert(Ljavafx/event/EventHandler;)V

    .line 78
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->onResizedSet:Z

    if-eqz v2, :cond_3

    .line 79
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->onResized:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->setOnResized(Ljavafx/event/EventHandler;)V

    .line 81
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->onStatusChangedSet:Z

    if-eqz v2, :cond_4

    .line 82
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->onStatusChanged:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->setOnStatusChanged(Ljavafx/event/EventHandler;)V

    .line 84
    :cond_4
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->onVisibilityChangedSet:Z

    if-eqz v2, :cond_5

    .line 85
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->onVisibilityChanged:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->setOnVisibilityChanged(Ljavafx/event/EventHandler;)V

    .line 87
    :cond_5
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->promptHandlerSet:Z

    if-eqz v2, :cond_6

    .line 88
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->promptHandler:Ljavafx/util/Callback;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->setPromptHandler(Ljavafx/util/Callback;)V

    .line 90
    :cond_6
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngineBuilder;->locationSet:Z

    if-eqz v2, :cond_7

    .line 91
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngineBuilder;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine;->load(Ljava/lang/String;)V

    .line 93
    :cond_7
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngineBuilder;->build()Ljavafx/scene/web/WebEngine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/web/WebEngine;
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    new-instance v2, Ljavafx/scene/web/WebEngine;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/web/WebEngine;-><init>()V

    move-object v1, v2

    .line 59
    .local v1, "engine":Ljavafx/scene/web/WebEngine;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->applyTo(Ljavafx/scene/web/WebEngine;)V

    .line 60
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public confirmHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljavafx/scene/web/WebEngineBuilder;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->confirmHandler:Ljavafx/util/Callback;

    .line 104
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->confirmHandlerSet:Z

    .line 105
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public createPopupHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PopupFeatures;",
            "Ljavafx/scene/web/WebEngine;",
            ">;)",
            "Ljavafx/scene/web/WebEngineBuilder;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/web/PopupFeatures;Ljavafx/scene/web/WebEngine;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->createPopupHandler:Ljavafx/util/Callback;

    .line 120
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->createPopupHandlerSet:Z

    .line 121
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public location(Ljava/lang/String;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->location:Ljava/lang/String;

    .line 217
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->locationSet:Z

    .line 218
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public onAlert(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljavafx/scene/web/WebEngineBuilder;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/String;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onAlert:Ljavafx/event/EventHandler;

    .line 136
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onAlertSet:Z

    .line 137
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public onResized(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;>;)",
            "Ljavafx/scene/web/WebEngineBuilder;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljavafx/geometry/Rectangle2D;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onResized:Ljavafx/event/EventHandler;

    .line 152
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onResizedSet:Z

    .line 153
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public onStatusChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljavafx/scene/web/WebEngineBuilder;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/String;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onStatusChanged:Ljavafx/event/EventHandler;

    .line 168
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onStatusChangedSet:Z

    .line 169
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public onVisibilityChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljavafx/scene/web/WebEngineBuilder;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onVisibilityChanged:Ljavafx/event/EventHandler;

    .line 184
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->onVisibilityChangedSet:Z

    .line 185
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method

.method public promptHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebEngineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PromptData;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavafx/scene/web/WebEngineBuilder;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngineBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/web/PromptData;Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngineBuilder;->promptHandler:Ljavafx/util/Callback;

    .line 200
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngineBuilder;->promptHandlerSet:Z

    .line 201
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngineBuilder;
    return-object v0
.end method
