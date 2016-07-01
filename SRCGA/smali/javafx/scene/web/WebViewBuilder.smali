.class public final Ljavafx/scene/web/WebViewBuilder;
.super Ljavafx/scene/ParentBuilder;
.source "WebViewBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/ParentBuilder",
        "<",
        "Ljavafx/scene/web/WebViewBuilder;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/web/WebView;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private engineBuilder:Ljavafx/scene/web/WebEngineBuilder;

.field private fontScale:D

.field private fontScaleSet:Z

.field private maxHeight:D

.field private maxHeightSet:Z

.field private maxWidth:D

.field private maxWidthSet:Z

.field private minHeight:D

.field private minHeightSet:Z

.field private minWidth:D

.field private minWidthSet:Z

.field private prefHeight:D

.field private prefHeightSet:Z

.field private prefWidth:D

.field private prefWidthSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/ParentBuilder;-><init>()V

    return-void
.end method

.method public static create()Ljavafx/scene/web/WebViewBuilder;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljavafx/scene/web/WebViewBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/web/WebViewBuilder;-><init>()V

    return-object v0
.end method

.method private engineBuilder()Ljavafx/scene/web/WebEngineBuilder;
    .locals 3

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebViewBuilder;->engineBuilder:Ljavafx/scene/web/WebEngineBuilder;

    if-nez v1, :cond_0

    .line 326
    move-object v1, v0

    invoke-static {}, Ljavafx/scene/web/WebEngineBuilder;->create()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/web/WebViewBuilder;->engineBuilder:Ljavafx/scene/web/WebEngineBuilder;

    .line 328
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebViewBuilder;->engineBuilder:Ljavafx/scene/web/WebEngineBuilder;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/web/WebView;)V
    .locals 6

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v2, p1

    .local v2, "view":Ljavafx/scene/web/WebView;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Ljavafx/scene/ParentBuilder;->applyTo(Ljavafx/scene/Parent;)V

    .line 72
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/web/WebViewBuilder;->fontScaleSet:Z

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/web/WebViewBuilder;->fontScale:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/web/WebView;->setFontScale(D)V

    .line 75
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/web/WebViewBuilder;->maxHeightSet:Z

    if-eqz v3, :cond_1

    .line 76
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/web/WebViewBuilder;->maxHeight:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/web/WebView;->setMaxHeight(D)V

    .line 78
    :cond_1
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/web/WebViewBuilder;->maxWidthSet:Z

    if-eqz v3, :cond_2

    .line 79
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/web/WebViewBuilder;->maxWidth:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/web/WebView;->setMaxWidth(D)V

    .line 81
    :cond_2
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/web/WebViewBuilder;->minHeightSet:Z

    if-eqz v3, :cond_3

    .line 82
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/web/WebViewBuilder;->minHeight:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/web/WebView;->setMinHeight(D)V

    .line 84
    :cond_3
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/web/WebViewBuilder;->minWidthSet:Z

    if-eqz v3, :cond_4

    .line 85
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/web/WebViewBuilder;->minWidth:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/web/WebView;->setMinWidth(D)V

    .line 87
    :cond_4
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/web/WebViewBuilder;->prefHeightSet:Z

    if-eqz v3, :cond_5

    .line 88
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/web/WebViewBuilder;->prefHeight:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/web/WebView;->setPrefHeight(D)V

    .line 90
    :cond_5
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/web/WebViewBuilder;->prefWidthSet:Z

    if-eqz v3, :cond_6

    .line 91
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/web/WebViewBuilder;->prefWidth:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/web/WebView;->setPrefWidth(D)V

    .line 93
    :cond_6
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/web/WebViewBuilder;->engineBuilder:Ljavafx/scene/web/WebEngineBuilder;

    if-eqz v3, :cond_7

    .line 94
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/web/WebViewBuilder;->engineBuilder:Ljavafx/scene/web/WebEngineBuilder;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getEngine()Ljavafx/scene/web/WebEngine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/web/WebEngineBuilder;->applyTo(Ljavafx/scene/web/WebEngine;)V

    .line 96
    :cond_7
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebViewBuilder;->build()Ljavafx/scene/web/WebView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/web/WebView;
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    new-instance v2, Ljavafx/scene/web/WebView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/web/WebView;-><init>()V

    move-object v1, v2

    .line 61
    .local v1, "x":Ljavafx/scene/web/WebView;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebViewBuilder;->applyTo(Ljavafx/scene/web/WebView;)V

    .line 62
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public confirmHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljavafx/scene/web/WebViewBuilder;"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->confirmHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 221
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public createPopupHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PopupFeatures;",
            "Ljavafx/scene/web/WebEngine;",
            ">;)",
            "Ljavafx/scene/web/WebViewBuilder;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/web/PopupFeatures;Ljavafx/scene/web/WebEngine;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->createPopupHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 235
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public fontScale(D)Ljavafx/scene/web/WebViewBuilder;
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/web/WebViewBuilder;->fontScale:D

    .line 107
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/web/WebViewBuilder;->fontScaleSet:Z

    .line 108
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public location(Ljava/lang/String;)Ljavafx/scene/web/WebViewBuilder;
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->location(Ljava/lang/String;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 319
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public maxHeight(D)Ljavafx/scene/web/WebViewBuilder;
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/web/WebViewBuilder;->maxHeight:D

    .line 123
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/web/WebViewBuilder;->maxHeightSet:Z

    .line 124
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public maxWidth(D)Ljavafx/scene/web/WebViewBuilder;
    .locals 7

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/web/WebViewBuilder;->maxWidth:D

    .line 139
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/web/WebViewBuilder;->maxWidthSet:Z

    .line 140
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public minHeight(D)Ljavafx/scene/web/WebViewBuilder;
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/web/WebViewBuilder;->minHeight:D

    .line 155
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/web/WebViewBuilder;->minHeightSet:Z

    .line 156
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public minWidth(D)Ljavafx/scene/web/WebViewBuilder;
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/web/WebViewBuilder;->minWidth:D

    .line 171
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/web/WebViewBuilder;->minWidthSet:Z

    .line 172
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public onAlert(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebViewBuilder;
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
            "Ljavafx/scene/web/WebViewBuilder;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/String;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->onAlert(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 249
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public onResized(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebViewBuilder;
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
            "Ljavafx/scene/web/WebViewBuilder;"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljavafx/geometry/Rectangle2D;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->onResized(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 263
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public onStatusChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebViewBuilder;
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
            "Ljavafx/scene/web/WebViewBuilder;"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/String;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->onStatusChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 277
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public onVisibilityChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebViewBuilder;
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
            "Ljavafx/scene/web/WebViewBuilder;"
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->onVisibilityChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 291
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public prefHeight(D)Ljavafx/scene/web/WebViewBuilder;
    .locals 7

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/web/WebViewBuilder;->prefHeight:D

    .line 187
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/web/WebViewBuilder;->prefHeightSet:Z

    .line 188
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public prefWidth(D)Ljavafx/scene/web/WebViewBuilder;
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/web/WebViewBuilder;->prefWidth:D

    .line 203
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/web/WebViewBuilder;->prefWidthSet:Z

    .line 204
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method

.method public promptHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PromptData;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavafx/scene/web/WebViewBuilder;"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebViewBuilder;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/web/PromptData;Ljava/lang/String;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/web/WebViewBuilder;->engineBuilder()Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngineBuilder;->promptHandler(Ljavafx/util/Callback;)Ljavafx/scene/web/WebEngineBuilder;

    move-result-object v2

    .line 305
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebViewBuilder;
    return-object v0
.end method
