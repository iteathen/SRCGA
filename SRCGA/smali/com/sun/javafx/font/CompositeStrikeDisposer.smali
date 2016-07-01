.class Lcom/sun/javafx/font/CompositeStrikeDisposer;
.super Ljava/lang/Object;
.source "CompositeStrikeDisposer.java"

# interfaces
.implements Lcom/sun/javafx/font/DisposerRecord;


# instance fields
.field desc:Lcom/sun/javafx/font/FontStrikeDesc;

.field disposed:Z

.field fontResource:Lcom/sun/javafx/font/FontResource;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/font/FontResource;Lcom/sun/javafx/font/FontStrikeDesc;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrikeDisposer;
    move-object v1, p1

    .local v1, "font":Lcom/sun/javafx/font/FontResource;
    move-object v2, p2

    .local v2, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/font/CompositeStrikeDisposer;->disposed:Z

    .line 40
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/font/CompositeStrikeDisposer;->fontResource:Lcom/sun/javafx/font/FontResource;

    .line 41
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/font/CompositeStrikeDisposer;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrikeDisposer;
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/javafx/font/CompositeStrikeDisposer;->disposed:Z

    if-nez v3, :cond_1

    .line 49
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrikeDisposer;->fontResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v3}, Lcom/sun/javafx/font/FontResource;->getStrikeMap()Ljava/util/Map;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CompositeStrikeDisposer;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    move-object v1, v3

    .line 50
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 51
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 52
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 53
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrikeDisposer;->fontResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v3}, Lcom/sun/javafx/font/FontResource;->getStrikeMap()Ljava/util/Map;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CompositeStrikeDisposer;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/font/CompositeStrikeDisposer;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    :cond_1
    monitor-exit v5

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrikeDisposer;
    throw v0
.end method
