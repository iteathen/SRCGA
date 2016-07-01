.class public Lcom/sun/javafx/media/PrismMediaFrameHandler;
.super Ljava/lang/Object;
.source "PrismMediaFrameHandler.java"

# interfaces
.implements Lcom/sun/prism/ResourceFactoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;,
        Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    }
.end annotation


# static fields
.field private static handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sun/javafx/media/PrismMediaFrameHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private registeredWithFactory:Z

.field private final releaseRenderJob:Lcom/sun/javafx/tk/RenderJob;

.field private final textures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            "Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v3, v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;->textures:Ljava/util/Map;

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;->registeredWithFactory:Z

    .line 162
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/RenderJob;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/media/PrismMediaFrameHandler$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/media/PrismMediaFrameHandler;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;->releaseRenderJob:Lcom/sun/javafx/tk/RenderJob;

    .line 68
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/media/PrismMediaFrameHandler;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/media/PrismMediaFrameHandler;->lambda$new$0()V

    return-void
.end method

.method public static declared-synchronized getHandler(Ljava/lang/Object;)Lcom/sun/javafx/media/PrismMediaFrameHandler;
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "provider":Ljava/lang/Object;
    const-class v5, Lcom/sun/javafx/media/PrismMediaFrameHandler;

    monitor-enter v5

    move-object v2, v0

    if-nez v2, :cond_0

    .line 53
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "provider must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "provider":Ljava/lang/Object;
    throw v0

    .line 55
    .restart local v0    # "provider":Ljava/lang/Object;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;->handlers:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 56
    new-instance v2, Ljava/util/WeakHashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;->handlers:Ljava/util/Map;

    .line 58
    :cond_1
    sget-object v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;->handlers:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;

    move-object v1, v2

    .line 59
    .local v1, "ret":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v2, v1

    if-nez v2, :cond_2

    .line 60
    new-instance v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/media/PrismMediaFrameHandler;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 61
    sget-object v2, Lcom/sun/javafx/media/PrismMediaFrameHandler;->handlers:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 63
    :cond_2
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "provider":Ljava/lang/Object;
    monitor-exit v5

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/media/PrismMediaFrameHandler;->releaseData()V

    .line 164
    return-void
.end method

.method private releaseData()V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler;->textures:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;

    move-object v2, v3

    .line 155
    .local v2, "tme":Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    invoke-interface {v3}, Lcom/sun/prism/Texture;->dispose()V

    .line 158
    :cond_0
    goto :goto_0

    .line 159
    .end local v2    # "tme":Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler;->textures:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 160
    return-void
.end method

.method private updateTexture(Lcom/sun/prism/Graphics;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;)V
    .locals 12

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v3, p2

    .local v3, "vdb":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    move-object v4, p3

    .local v4, "tme":Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;
    move-object v7, v2

    invoke-interface {v7}, Lcom/sun/prism/Graphics;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v7

    move-object v5, v7

    .line 122
    .local v5, "screen":Lcom/sun/glass/ui/Screen;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    if-eqz v7, :cond_1

    move-object v7, v4

    iget v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->encodedWidth:I

    move-object v8, v3

    .line 123
    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getEncodedWidth()I

    move-result v8

    if-ne v7, v8, :cond_0

    move-object v7, v4

    iget v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->encodedHeight:I

    move-object v8, v3

    .line 124
    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getEncodedHeight()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 126
    :cond_0
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    invoke-interface {v7}, Lcom/sun/prism/Texture;->dispose()V

    .line 127
    move-object v7, v4

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    .line 130
    :cond_1
    new-instance v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;-><init>(Lcom/sun/javafx/media/PrismMediaFrameHandler;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)V

    move-object v6, v7

    .line 131
    .local v6, "prismBuffer":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    if-nez v7, :cond_3

    .line 132
    move-object v7, v1

    iget-boolean v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler;->registeredWithFactory:Z

    if-nez v7, :cond_2

    .line 135
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v7, v8}, Lcom/sun/prism/ResourceFactory;->addFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V

    .line 136
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler;->registeredWithFactory:Z

    .line 139
    :cond_2
    move-object v7, v4

    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v8

    move-object v9, v5

    .line 140
    invoke-virtual {v8, v9}, Lcom/sun/prism/GraphicsPipeline;->getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;

    move-result-object v8

    move-object v9, v6

    .line 141
    invoke-interface {v8, v9}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/MediaFrame;)Lcom/sun/prism/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    .line 142
    move-object v7, v4

    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getEncodedWidth()I

    move-result v8

    iput v8, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->encodedWidth:I

    .line 143
    move-object v7, v4

    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getEncodedHeight()I

    move-result v8

    iput v8, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->encodedHeight:I

    .line 147
    :cond_3
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    if-eqz v7, :cond_4

    .line 148
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    move-object v8, v6

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/sun/prism/Texture;->update(Lcom/sun/prism/MediaFrame;Z)V

    .line 150
    :cond_4
    move-object v7, v4

    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getTimestamp()D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->lastFrameTime:D

    .line 151
    return-void
.end method


# virtual methods
.method public factoryReleased()V
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/media/PrismMediaFrameHandler;->releaseData()V

    .line 181
    return-void
.end method

.method public factoryReset()V
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/media/PrismMediaFrameHandler;->releaseData()V

    .line 177
    return-void
.end method

.method public getTexture(Lcom/sun/prism/Graphics;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/prism/Texture;
    .locals 11

    .prologue
    .line 85
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    move-object v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v3, p2

    .local v3, "currentFrame":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    move-object v6, v2

    invoke-interface {v6}, Lcom/sun/prism/Graphics;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v6

    move-object v4, v6

    .line 86
    .local v4, "screen":Lcom/sun/glass/ui/Screen;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler;->textures:Ljava/util/Map;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;

    move-object v5, v6

    .line 88
    .local v5, "tme":Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;
    const/4 v6, 0x0

    move-object v7, v3

    if-ne v6, v7, :cond_1

    .line 90
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler;->textures:Ljava/util/Map;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler;->textures:Ljava/util/Map;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 93
    :cond_0
    const/4 v6, 0x0

    move-object v1, v6

    .line 114
    .end local v1    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    :goto_0
    return-object v1

    .line 96
    .restart local v1    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    :cond_1
    const/4 v6, 0x0

    move-object v7, v5

    if-ne v6, v7, :cond_2

    .line 98
    new-instance v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;-><init>(Lcom/sun/javafx/media/PrismMediaFrameHandler$1;)V

    move-object v5, v6

    .line 99
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler;->textures:Ljava/util/Map;

    move-object v7, v4

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 102
    :cond_2
    move-object v6, v5

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    if-eqz v6, :cond_3

    .line 103
    move-object v6, v5

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    invoke-interface {v6}, Lcom/sun/prism/Texture;->lock()V

    .line 104
    move-object v6, v5

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    invoke-interface {v6}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    move-object v6, v5

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    .line 110
    :cond_3
    const/4 v6, 0x0

    move-object v7, v5

    iget-object v7, v7, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    if-eq v6, v7, :cond_4

    move-object v6, v5

    iget-wide v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->lastFrameTime:D

    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getTimestamp()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_5

    .line 111
    :cond_4
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v5

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/media/PrismMediaFrameHandler;->updateTexture(Lcom/sun/prism/Graphics;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;)V

    .line 114
    :cond_5
    move-object v6, v5

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->texture:Lcom/sun/prism/Texture;

    move-object v1, v6

    goto :goto_0
.end method

.method public releaseTextures()V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v1, v2

    .line 172
    .local v1, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler;->releaseRenderJob:Lcom/sun/javafx/tk/RenderJob;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 173
    return-void
.end method
